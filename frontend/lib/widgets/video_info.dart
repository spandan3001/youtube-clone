import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'package:frontend/data.dart';

class VideoInfo extends StatelessWidget {
  final Video video;

  const VideoInfo({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            video.title,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge!.copyWith(fontSize: 15.0),
          ),
          const SizedBox(height: 6.0),
          Text(
            '${video.viewCount} views • ${timeago.format(video.timestamp)}',
            style: Theme.of(
              context,
            ).textTheme.bodySmall!.copyWith(fontSize: 14.0),
          ),
          const SizedBox(height: 12.0),
          _AuthorInfo(user: video.author),
          const SizedBox(height: 16.0),
          SizedBox(
            width: double.maxFinite,
            height: 40,
            child: _ActionsRow(video: video),
          ),
        ],
      ),
    );
  }
}

class _ActionsRow extends StatelessWidget {
  final Video video;

  const _ActionsRow({required this.video});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        _buildAction(context, Icons.thumb_up_outlined, video.likes),
        const SizedBox(width: 6.0),
        _buildAction(context, Icons.thumb_down_outlined, video.dislikes),
        const SizedBox(width: 6.0),
        _buildAction(context, Icons.reply_outlined, 'Share'),
        const SizedBox(width: 6.0),
        _buildAction(context, Icons.download_outlined, 'Download'),
        const SizedBox(width: 6.0),
        _buildAction(context, Icons.library_add_outlined, 'Save'),
      ],
    );
  }

  Widget _buildAction(BuildContext context, IconData icon, String label) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.white10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(icon),
            const SizedBox(width: 6.0),
            Text(
              label,
              style: Theme.of(
                context,
              ).textTheme.bodySmall!.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class _AuthorInfo extends StatelessWidget {
  final User user;

  const _AuthorInfo({required this.user});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('Navigate to profile'),
      child: Row(
        children: [
          CircleAvatar(foregroundImage: NetworkImage(user.profileImageUrl)),
          const SizedBox(width: 8.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Text(
                    user.username,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyLarge!.copyWith(fontSize: 15.0),
                  ),
                ),
                Flexible(
                  child: Text(
                    '${user.subscribers} subscribers',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall!.copyWith(fontSize: 14.0),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {},
            child: Text(
              'Subscribe',
              style: Theme.of(
                context,
              ).textTheme.bodyLarge!.copyWith(color: Colors.black,fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
