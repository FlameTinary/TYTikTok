import 'package:flutter/material.dart';

import 'video_info_view.dart';
import 'video_operate_view.dart';
import 'video_play_view.dart';
import '../../Widgets/music_animate_widget.dart';

class TYVideoIterm extends StatelessWidget {
  const TYVideoIterm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.of(context).size.width;
    return Container(
        constraints: const BoxConstraints.expand(),
        color: Colors.black,
        child: Stack(
          children: [
            // 视频播放视图
            const TYVideoPlayView(),
            // 底部视频信息
            Positioned(
              width: screenW * 0.7,
              // height: 150,
              bottom: 0,
              child: const TYVideoInfoView(),
            ),
            // 右边头像点赞
            const Positioned(
              bottom: 150,
              right: 0,
              child: TYVideoOperateView(),
            ),
            // 底部bgm旋转动画视图
            const Positioned(
              bottom: 10,
              right: 10,
              child: TYMusicAnimate(),
            ),
          ],
        ));
  }
}
