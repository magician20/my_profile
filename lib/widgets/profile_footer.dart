import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileFooterWidget extends StatelessWidget {
  const ProfileFooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          color: const Color(0XFFFBEFD9),
          child: Row(
            children: [
              TextButton.icon(
                  onPressed: () => launch('https://facebook.com'),
                  icon: Image.asset(
                    'assets/images/social/facebook.png',
                    width: 15,
                    height: 15,
                  ),
                  label: const Text('')),
              TextButton.icon(
                  onPressed: () => launch('https://instagram.com'),
                  icon: Image.asset(
                    'assets/images/social/instagram.png',
                    width: 15,
                    height: 15,
                  ),
                  label: const Text('')),
              TextButton.icon(
                  onPressed: () => launch('https://twitter.com'),
                  icon: Image.asset(
                    'assets/images/social/twitter.png',
                    width: 15,
                    height: 15,
                  ),
                  label: const Text(''))
            ],
          ),
        )
      ],
    );
  }
    void _launchURL(String url) async =>await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
}