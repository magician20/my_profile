import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  final String buttonText;
  final Widget icon;
  final VoidCallback onPressed;
  const ContactButton({
    Key? key,
    required this.buttonText,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: TextButton.icon(
        style: TextButton.styleFrom(
            textStyle: const TextStyle(color: Colors.black12),
            backgroundColor: Colors.amberAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0))),
        onPressed: onPressed,
        icon: Padding(padding: const EdgeInsets.all(2.0), child: icon),
        label: Padding(
            padding: const EdgeInsets.only(top: 2.0, bottom: 2.0, right: 2.0),
            child:
                Text(buttonText, style: const TextStyle(color: Colors.black))),
      ),
    );
  }
}
