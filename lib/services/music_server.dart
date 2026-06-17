import 'package:audioplayers/audioplayers.dart';

class MusicService {
  static final AudioPlayer player = AudioPlayer();

  static bool started = false;

  static bool isPlaying = false;
}