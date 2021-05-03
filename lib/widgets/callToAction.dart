import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portoflio_pwa/utilities/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class CallToAction extends StatelessWidget {
  final String text, url;
  final IconData icon;
  CallToAction(this.url, this.text, this.icon);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await canLaunch(url)
            ? await launch(url)
            : throw 'Could not launch $url';
      },
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: kPrimaryColor,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              '$text',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
