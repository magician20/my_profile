import 'package:flutter/material.dart';
import 'package:my_profile/widgets/body.dart';
import 'package:my_profile/widgets/profile_footer.dart';

class ProfileBodyWidget extends StatelessWidget {
  const ProfileBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:const [
         Body(),
        Align(
            alignment: Alignment.bottomLeft,
            child:  Padding(
              padding: EdgeInsets.only(top: 10.0, bottom:30.0, right:20.0, left:60.0),
              child: SizedBox(height: 60, child: ProfileFooterWidget()),
            ))
      ],
    );
  }
}
