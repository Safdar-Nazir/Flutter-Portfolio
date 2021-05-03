import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portoflio_pwa/utilities/constants.dart';
import 'package:portoflio_pwa/widgets/callToAction.dart';

class MobileScreen extends StatefulWidget {
  @override
  _MobileScreenState createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/flutter_header.png',
                  height: 400,
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'FLUTTER \nDEVELOPER',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.03,
                      ),
                      child: Text(
                        'I am a Flutter Developer with more than 2 years of experience.'
                        'I can develop variety of apps ranging from basic to enterprise level.'
                        'I have worked with third API\'s and native mobile app functionalities.'
                        'I can implement beautiful UI\'s in Flutter. Here is my Github Link.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            CallToAction(
              'https://github.com/Safdar-Nazir',
              'Github',
              FontAwesomeIcons.github,
            ),
            SizedBox(
              height: 60,
            ),
            Column(
              children: [
                Image.asset(
                  'assets/images/ui_header.png',
                  height: 400,
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.03,
                      ),
                      child: Text(
                        'I am also a UI designer. I have design different things ranging from a simple website to complete design solution.'
                        'UI design portfolios should have the perfect balance of personality, '
                        'practicality, and information, ensuring your projects and case studies '
                        'are presented in an aesthetically pleasing and easy-to-follow manner. Here is my Behance.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.5,
                        ),
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
              ],
            ),
            SizedBox(
              height: 100,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/images/fiverr.png',
                      height: 40,
                    ),
                    Image.asset(
                      'assets/images/upwork.png',
                      height: 100,
                    ),
                    Image.asset(
                      'assets/images/freelancer.png',
                      height: 40,
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
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
