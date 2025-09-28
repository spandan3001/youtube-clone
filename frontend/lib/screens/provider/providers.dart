import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/data.dart' show Video;
import 'package:frontend/screens/provider/notifiers.dart';
import 'package:miniplayer/miniplayer.dart';


// Provider
final selectedVideoProvider =
NotifierProvider<SelectedVideoNotifier, Video?>(SelectedVideoNotifier.new);

final miniPlayerControllerProvider = Provider<MiniplayerController>(
      (ref) => MiniplayerController(),
);
