import 'package:flutter/material.dart';
class TYMusicAnimate extends StatefulWidget {
  const TYMusicAnimate({Key? key}) : super(key: key);

  @override
  State<TYMusicAnimate> createState() => _TYMusicAnimateState();
}

class _TYMusicAnimateState extends State<TYMusicAnimate> with SingleTickerProviderStateMixin {

  late Animation<double> animation;
  late AnimationController controller;

  @override
  initState(){
    super.initState();
    controller = AnimationController(duration: const Duration(seconds: 5),vsync: this)..repeat();
    animation = Tween<double>(begin: 0,end: 1).animate(controller);
  }

  @override
  dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: animation,
      child: Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(22)),
        child: const Icon(Icons.music_note_rounded,color: Colors.white,),
      ),
    );
  }
}
