import 'package:flutter/material.dart';
import 'package:paint/landing_screen/right_widget.dart';
import 'package:paint/menu/menu_item.dart';
import 'package:paint/screen/page1_aluu.dart';
import 'package:paint/screen/page2_potol.dart';


// Enum to represent the menu items

class LandingScreen extends StatefulWidget {
  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final _middleContentWidgetKey = GlobalKey<_MiddleContentWidgetState>();

  // Function to handle menu item selection
  void onMenuItemSelected(MenuItem menuItem) {
    switch (menuItem) {
      case MenuItem.aluu:
        _middleContentWidgetKey.currentState?.changeContent(ALUUContent());
        break;
      case MenuItem.potol:
        _middleContentWidgetKey.currentState?.changeContent(PotolContent());
        break;
    // Add cases for other menu items
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dynamic Content Switching')),
      body: Row(
        children: [
          // Menu section
          Expanded(
            flex: 1,
            child: MenuWidget(onMenuItemSelected: onMenuItemSelected),
          ),
          // Middle content section
          Expanded(
            flex: 3,
            child: MiddleContentWidget(key: _middleContentWidgetKey),
          ),
          // Last section
          Expanded(
            flex: 1,
            child: LastContentWidget(),
          ),
        ],
      ),
    );
  }
}


///   DYNAMIC MID SECTION

class MiddleContentWidget extends StatefulWidget {
  MiddleContentWidget({Key? key}) : super(key: key);

  @override
  _MiddleContentWidgetState createState() => _MiddleContentWidgetState();
}

class _MiddleContentWidgetState extends State<MiddleContentWidget> {
  Widget _currentContent = Container(
    child: const Center(
      child: Text("I LOVE KHALISI"),
    ),
  ); // Initial content (can be any widget)

  void changeContent(Widget newContent) {
    setState(() {
      _currentContent = newContent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _currentContent,
    );
  }
}

