import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class TYVideoPlayView extends StatefulWidget {
  const TYVideoPlayView({Key? key}) : super(key: key);

  @override
  State<TYVideoPlayView> createState() => _TYVideoPlayViewState();
}

class _TYVideoPlayViewState extends State<TYVideoPlayView> {
  late VideoPlayerController _controller;

  @override
  initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4');
    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      alignment: Alignment.center,
      child: _controller.value.isInitialized
          ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
          : Container(),
    );
  }
}
