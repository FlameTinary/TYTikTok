import 'package:flutter/material.dart';

class TYVideoInfoView extends StatelessWidget {
  const TYVideoInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '@人民公社',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              '我诶阿斯丹奥冲扥阿斯顿恩' * 8,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              children: const [
                Icon(
                  Icons.music_note,
                  color: Colors.white,
                ),
                Text(
                  '音乐名称滚动视图',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
