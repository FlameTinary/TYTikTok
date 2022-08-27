import 'package:flutter/material.dart';

import '../../Widgets/avatar_widget.dart';
import '../../Widgets/icon_widget.dart';

class TYVideoOperateView extends StatelessWidget {
  const TYVideoOperateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          // 头像widget
          TYAvatar(),
          SizedBox(
            height: 20,
          ),
          // 点赞widget
          TYIconWidget(
            icon: Icons.favorite,
            title: '点赞',
          ),
          SizedBox(
            height: 20,
          ),
          // 评论widget
          TYIconWidget(
            icon: Icons.speaker_notes,
            title: '评论',
          ),
          SizedBox(
            height: 20,
          ),
          // 收藏widget
          TYIconWidget(
            icon: Icons.star,
            title: '收藏',
          ),
          SizedBox(
            height: 20,
          ),
          // 分享widget
          TYIconWidget(
            icon: Icons.share,
            title: '分享',
          ),
        ],
      ),
    );
  }
}
