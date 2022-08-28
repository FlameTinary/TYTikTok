import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';

class TYVideoPlayView extends StatefulWidget {
  const TYVideoPlayView({Key? key}) : super(key: key);

  @override
  State<TYVideoPlayView> createState() => _TYVideoPlayViewState();
}

class _TYVideoPlayViewState extends State<TYVideoPlayView> {
  final FijkPlayer player = FijkPlayer();

  @override
  initState() {
    super.initState();
    player.setDataSource('https://sample-videos.com/video123/flv/240/big_buck_bunny_240p_10mb.flv', autoPlay: true);
  }

  @override
  dispose() {
    player.release();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      alignment: Alignment.center,
      child: FijkView(
        player: player,
      ),
    );
  }
}
