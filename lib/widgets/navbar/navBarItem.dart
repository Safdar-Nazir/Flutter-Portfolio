import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String text;
  final IconData icon;
  NavBarItem(this.text, this.icon);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 18,
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          '$text',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
