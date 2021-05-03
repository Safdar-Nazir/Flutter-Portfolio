import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portoflio_pwa/utilities/centeredView.dart';
import 'package:portoflio_pwa/utilities/constants.dart';
import 'package:portoflio_pwa/widgets/callToAction.dart';
import 'package:portoflio_pwa/widgets/navbar/navBarDesktop.dart';
import 'package:sticky_headers/sticky_headers.dart';

class WebScreen extends StatefulWidget {
  @override
  _WebScreenState createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              StickyHeader(
                header: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: CenteredView(
                    childWidget: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.05,
                        vertical: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/Logo.png',
                          ),
                          Row(
                            children: [
                              NavBarDesktop(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                content: CenteredView(
                  childWidget: Column(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.08),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/flutter_header.png',
                                  height: 400,
                                ),
                                SizedBox(
                                  width: screenWidth * 0.05,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'FLUTTER DEVELOPER',
                                        style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'I am a Flutter Developer with more than 2 years of experience.'
                                        'I can develop variety of apps ranging from basic to enterprise level.'
                                        'I have worked with third API\'s and native mobile app functionalities.'
                                        'I can implement beautiful UI\'s in Flutter. Here is my Github Link.',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 14,
                                          height: 1.5,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      CallToAction(
                                        'https://github.com/Safdar-Nazir',
                                        'Github',
                                        FontAwesomeIcons.github,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 250,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'UI DESIGNER',
                                        style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'I am also a UI designer. I have design different things ranging from a simple website to complete design solution.'
                                        'UI design portfolios should have the perfect balance of personality, '
                                        'practicality, and information, ensuring your projects and case studies '
                                        'are presented in an aesthetically pleasing and easy-to-follow manner. Here is my Behance.',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 14,
                                          height: 1.5,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      CallToAction(
                                        'https://www.behance.net/SafdarBE',
                                        'Behance',
                                        FontAwesomeIcons.behance,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.05,
                                ),
                                Image.asset(
                                  'assets/images/ui_header.png',
                                  height: 400,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 200,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Currently Working on...',
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                    'I am currently working as a Flutter Developer on both Fiverr and Freelance and UI Designer at Upwork.'),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      'assets/images/fiverr.png',
                                      height: 80,
                                    ),
                                    Image.asset(
                                      'assets/images/upwork.png',
                                      height: 200,
                                    ),
                                    Image.asset(
                                      'assets/images/freelancer.png',
                                      height: 80,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            Center(
                              child: Text(
                                'PS: Currently Navigation link\'s do not work.',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text('Happy Learning!'),
                            SizedBox(
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
