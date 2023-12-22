import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  launchURLBrowser() async {
    var url = Uri.parse('https://allytechllc.com/');
    if (await canLaunchUrl(url)) {
      // print('Inside of if means canLaunchUrl ok');
      await launchUrl(url);
    } else {
      // print('After the else means an error: $url');
      throw 'Could not launch $url';
    } //else
  } //_launchURLBrowser
}
