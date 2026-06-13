import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:site_tst/constants/app_colors.dart';
import 'package:site_tst/services/music_server.dart';

class MusicButton extends StatefulWidget {
  const MusicButton({super.key});

  @override
  State<MusicButton> createState() => _MusicButtonState();
}

class _MusicButtonState extends State<MusicButton> {


final player = MusicService.player;

  

  @override
  void initState() {
    super.initState();

    startMusic();
  }

 Future<void> startMusic() async {
 if (MusicService.started) return;

  MusicService.started = true;

  await player.setReleaseMode(
    ReleaseMode.loop,
  );

  await player.setVolume(0.35);

  await player.play(
    AssetSource('audio/wedding_nasheed.mp3'),
  );

  setState(() {
    MusicService.isPlaying = true;
  });
}

Future<void> toggleMusic() async {
  if (MusicService.isPlaying) {
    await player.pause();
  } else {
    await player.resume();
  }

  setState(() {
    MusicService.isPlaying = !MusicService.isPlaying;
  });
}

@override
void dispose() {
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleMusic,
      child: Container(
        width: 42,
        height: 42,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.primaryGold,
            width: 1.5,
          ),
        ),
        child: Icon(
  MusicService.isPlaying
      ? Icons.music_note_rounded
      : Icons.music_off_rounded,
  color: AppColors.primaryGold,
  size: 20,
),
      ),
    );
  }
}