import 'package:flutter/material.dart';

class TYTopNavbar extends StatefulWidget {
  const TYTopNavbar({Key? key, required this.controller, required this.titles}) : super(key: key);

  final TabController controller;
  final List<String> titles;
  @override
  State<TYTopNavbar> createState() => _TYTopNavbarState();
}

class _TYTopNavbarState extends State<TYTopNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 80,
      color: Color(0x000000),
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(flex: 1, child: Icon(Icons.search, color: Colors.white,)),
              Expanded(
                flex: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TabBar(
                    indicatorColor: Colors.white,
                    controller: widget.controller,
                    tabs: getTabs(),
                  ),
                ),),
              const Expanded(flex: 1, child: Icon(Icons.tv,color: Colors.white,)),
            ],
          ),
        ],
      ),
    );
  }

  List<Tab> getTabs() {
    List<Tab> items = [];
    for (int i = 0; i < widget.titles.length; i++ ){
      items.add(Tab(child: Text(widget.titles[i]),));
    }
    return items;
  }
}
