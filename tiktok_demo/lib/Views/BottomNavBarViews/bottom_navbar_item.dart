import 'package:flutter/material.dart';

typedef TYItemCallback = void Function();

class TYBottomNavbarItem extends StatefulWidget {
  const TYBottomNavbarItem(this.text,{
    Key? key,
    required this.isSelected,
    this.callback,
    this.textNormalColor,
    this.textSelectedColor,
  }) : super(key: key);

  final String text;
  final bool isSelected;
  final TYItemCallback? callback;
  final Color? textNormalColor;
  final Color? textSelectedColor;

  @override
  State<TYBottomNavbarItem> createState() => _TYBottomNavbarItemState();
}

class _TYBottomNavbarItemState extends State<TYBottomNavbarItem> {

  @override
  Widget build(BuildContext context) {
    Color normalColor = widget.textNormalColor == null ? Colors.white60 : widget.textNormalColor!;
    Color selectedColor = widget.textSelectedColor == null ? Colors.white : widget.textSelectedColor!;
    TextStyle normalStyle = TextStyle(color: normalColor);
    TextStyle selectedStyle = TextStyle(color: selectedColor);
    return TextButton(onPressed: widget.callback, child: Text(widget.text, style: widget.isSelected ? selectedStyle : normalStyle,));
  }
}
