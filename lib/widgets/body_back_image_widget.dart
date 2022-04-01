import 'package:flutter/material.dart';
import 'package:my_profile/utils/utils.dart';
import 'package:my_profile/widgets/contact_button.dart';

class BodyBackGroundImage extends StatelessWidget {
  const BodyBackGroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                      opacity: 0.5,
                      child: Image.asset(
                        'headshot.jpeg',
                        fit:BoxFit.contain,
                      )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        ' I \'m AbdelRahman. \n A software developer',
                        style:
                            TextStyle(fontSize: 44.5, color: Colors.blueGrey),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 75, vertical: 60),
                          child: ContactButton(
                            buttonText: 'Drop me a line',
                            icon: const Icon(Icons.mail_outline),
                            onPressed: () {
                              launchMailto();
                            },
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
