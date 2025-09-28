// SelectedVideoNotifier
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/data.dart';

class SelectedVideoNotifier extends Notifier<Video?> {
  @override
  Video? build() => null;

  void selectVideo(Video video) => state = video;
  void clearVideo() => state = null;
}