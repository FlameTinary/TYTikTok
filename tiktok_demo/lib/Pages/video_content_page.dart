import 'package:flutter/material.dart';
import 'package:tiktok_demo/Views/VideoViews/video_iterm.dart';

class TYVideoContentPage extends StatelessWidget {
  const TYVideoContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: const [
        TYVideoIterm(),
        TYVideoIterm(),
        TYVideoIterm(),
        TYVideoIterm(),
        TYVideoIterm(),
      ],
    );
  }
}
