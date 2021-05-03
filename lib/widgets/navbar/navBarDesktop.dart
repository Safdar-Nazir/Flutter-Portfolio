import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portoflio_pwa/widgets/navbar/navBarItem.dart';

class NavBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavBarItem('Home', Icons.home_rounded),
        SizedBox(
          width: 30,
        ),
        NavBarItem('Flutter Development', Icons.developer_mode_rounded),
        SizedBox(
          width: 30,
        ),
        NavBarItem('UI Design', Icons.design_services_rounded),
        SizedBox(
          width: 30,
        ),

        NavBarItem('Email', Icons.mail_rounded),

        // SizedBox(
        //   width: 10,
        // ),
      ],
    );
  }
}
