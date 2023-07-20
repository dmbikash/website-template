import 'package:flutter/material.dart';

enum MenuItem {
  aluu,
  potol,
}

class MenuWidget extends StatelessWidget {
  final void Function(MenuItem) onMenuItemSelected;

  MenuWidget({required this.onMenuItemSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 100,
      color: Colors.redAccent,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => onMenuItemSelected(MenuItem.aluu),
            child: Text('ALU'),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () => onMenuItemSelected(MenuItem.potol),
            child: Text('Potol'),
          ),
          // Add more menu items here
        ],
      ),
    );
  }
}
