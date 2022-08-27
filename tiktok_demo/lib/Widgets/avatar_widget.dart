import 'package:flutter/material.dart';

class TYAvatar extends StatelessWidget {
  const TYAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const defaultAvatar = 'https://gimg2.baidu.com/image_search/src=http%3A%2F%'
        '2Fc-ssl.duitang.com%2Fuploads%2Fblog%2F202101%2F23%2F20210123215342_3bb'
        'f3.thumb.1000_0.jpeg&refer=http%3A%2F%'
        '2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a8'
        '0&n=0&g=0n&fmt=auto?sec=1664209628&t=66972a3f03345956f84ff12443b8a31e';

    return Container(
      width: 44,
      height: 44,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          ClipOval(
            child: Image.network(defaultAvatar),
          ),
          const Positioned(
            bottom: -12,
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
