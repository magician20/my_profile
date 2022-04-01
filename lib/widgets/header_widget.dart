import 'package:flutter/material.dart';

class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 9.0,bottom: 9.0),
      child: Row(
        children: const [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            foregroundImage: NetworkImage(
              "https://picsum.photos/200",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0,right: 10.0),
            child: Text(
              "AbdElRahman",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
          )
        ],
      ),
    );
  }
}
