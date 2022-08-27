import 'package:flutter/material.dart';
class TYIconWidget extends StatelessWidget {
  const TYIconWidget({Key? key, required this.icon, this.title}) : super(key: key);

  final IconData icon;
  final String? title;
  @override
  Widget build(BuildContext context) {
    List<Widget> temp = [];
    temp.add(Icon(icon,color: Colors.white,size: 30,));
    if(title != null) {
      temp.add(Text(title!,style: TextStyle(color: Colors.white,fontSize: 10),));
    }
    return Column(
      children: temp,
    );
  }
}
