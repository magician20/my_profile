import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

launchMailto() async {
  final mailtoLink = Mailto(
    to: ['to@example.com'],
    cc: ['cc1@example.com', 'cc2@example.com'],
    subject: 'subject is',
    body: 'Enter Message Content',
  );
  // Convert the Mailto instance into a string.
  // Use either Dart's string interpolation
  // or the toString() method.
  await launch('$mailtoLink');
}
