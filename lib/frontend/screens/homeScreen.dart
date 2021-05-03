import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:portoflio_pwa/frontend/mobile/mobileScreen.dart';
import 'package:portoflio_pwa/frontend/tablet/tabletScreen.dart';
import 'package:portoflio_pwa/frontend/web/webScreen.dart';
import 'package:portoflio_pwa/utilities/constants.dart';

class HomeScreen extends StatefulWidget {
  static const id = 'homeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: screenWidth <= kMobileBreakpoint
          ? AppBar(
              backgroundColor: Colors.white,
              elevation: 1,
              title: Center(
                child: Image.asset('assets/images/Logo.png'),
              ),
            )
          : null,
      body: SafeArea(
        child: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth <= kTabletBreakpoint &&
                  constraints.maxWidth > kMobileBreakpoint) {
                return TabletScreen();
              } else if (constraints.maxWidth <= kMobileBreakpoint) {
                return MobileScreen();
              } else {
                return WebScreen();
              }
            },
          ),
        ),
      ),
    );
  }
}
