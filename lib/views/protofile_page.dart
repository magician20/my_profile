import 'package:flutter/material.dart';
import 'package:my_profile/utils/utils.dart';
import 'package:my_profile/widgets/contact_button.dart';
import 'package:my_profile/widgets/header_widget.dart';
import 'package:my_profile/widgets/profile_body.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const ProfileHeaderWidget(),
        actions: [
          ContactButton(
              buttonText: "Contact me",
              icon: const Icon(Icons.send_sharp),
              onPressed: () {
                launchMailto();
              })
        ],
      ),
      body: const ProfileBodyWidget(),
    );
  }
}
