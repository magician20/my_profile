import 'package:flutter/material.dart';
import 'package:my_profile/widgets/body_back_image_widget.dart';
import 'package:my_profile/widgets/body_list_widget.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Expanded(
          flex: 1, 
          child: BodyBackGroundImage()),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
             SizedBox(
              height: 30,
            ),
             Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                'My Projects',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                    fontSize: 22),
              ),
            ),
            Expanded(
              child:BodyListWidget(),
            ),
          ],
        )),
        const SizedBox(width: 100.0),
      ],
    );
  }
}
