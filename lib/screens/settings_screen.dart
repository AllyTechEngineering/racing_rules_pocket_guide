import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sailing_rules/utilities/calculate_button_size_class.dart';
import 'package:styled_text/styled_text.dart';
import '../utilities/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utilities/responsive_adaptive_class.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final ResponsiveAdaptiveClass responsiveAdaptiveClass = ResponsiveAdaptiveClass();
  final CalculateButtonSizeClass calculateButtonSizeClass = CalculateButtonSizeClass();
  late final UrlLauncher urlLauncher;
  dynamic orientation, size, height, width;
  double fontSizeValue = 0.0;
  double classFontSize = 0.0;
  double appBarTitleFontSize = 0.0;
  double elevatedButtonWidth = 0.0;
  double elevatedButtonHeight = 0.0;
  double classImageHeight = 0.0;
  double classImageWidth = 0.0;
  @override
  Widget build(BuildContext context) {
    responsiveAdaptiveClass.orientation = MediaQuery.of(context).orientation;
    responsiveAdaptiveClass.size = MediaQuery.of(context).size;
    responsiveAdaptiveClass.height = responsiveAdaptiveClass.size.height;
    responsiveAdaptiveClass.width = responsiveAdaptiveClass.size.width;
    elevatedButtonWidth = calculateButtonSizeClass.calculateButtonWidth(context, 1);
    elevatedButtonHeight = calculateButtonSizeClass.calculateButtonHeight(context, 0.75);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_circle_left_outlined,
          ),
          onPressed: () => context.go('/'),
        ),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'About the Developer',
            style: Theme.of(context).textTheme.displayLarge,
            textAlign: TextAlign.center,
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/images/ocean_background.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 1.0,
            image: AssetImage('lib/assets/images/ocean_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Container(
                  width: elevatedButtonWidth,
                  height: elevatedButtonHeight,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFDAFFFB),
                        Color(0xFF176B87),
                      ],
                      stops: [0.0, 0.8],
                    ),
                    // color: Colors.deepPurple.shade300,
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      _cookieAlertRejectAccept('https://www.linkedin.com/in/bob-taylor-mscs-mba/');
                      // _launchURLBrowser('https://www.linkedin.com/in/bob-taylor-mscs-mba/');
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 10.0,
                        // fixedSize: Size((width * 0.75), (height / 5.5)),
                        fixedSize: Size(elevatedButtonHeight, elevatedButtonWidth),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 3.0, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        backgroundColor: Colors.transparent),
                    child: Text(
                      'Bob Taylor\'s LinkedIn',
                      style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: elevatedButtonWidth,
                  height: elevatedButtonHeight,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFDAFFFB),
                        Color(0xFF176B87),
                      ],
                      stops: [0.0, 0.8],
                    ),
                    // color: Colors.deepPurple.shade300,
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      _cookieAlertRejectAccept('https://github.com/AllyTechEngineering/');
                      // _launchURLBrowser('https://github.com/AllyTechEngineering/');
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 10.0,
                        // fixedSize: Size((width * 0.75), (height / 5.5)),
                        fixedSize: Size(elevatedButtonWidth, elevatedButtonHeight),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 3.0, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        backgroundColor: Colors.transparent),
                    child: Text(
                      'Bob Taylor\'s GitHub Portfolio',
                      style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: elevatedButtonWidth,
                  height: elevatedButtonHeight,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFDAFFFB),
                        Color(0xFF176B87),
                      ],
                      stops: [0.0, 0.8],
                    ),
                    // color: Colors.deepPurple.shade300,
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      _cookieAlertRejectAccept('https://allytechllc.com');
                      // _launchURLBrowser('https://allytechllc.com');
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 10.0,
                        // fixedSize: Size((width * 0.75), (height / 5.5)),
                        fixedSize: Size(elevatedButtonWidth, elevatedButtonHeight),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 3.0, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        backgroundColor: Colors.transparent),
                    child: Text(
                      'AllyTech Mobile App Development Website',
                      style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: elevatedButtonWidth,
                  height: elevatedButtonHeight,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFDAFFFB),
                        Color(0xFF176B87),
                      ],
                      stops: [0.0, 0.8],
                    ),
                    // color: Colors.deepPurple.shade300,
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      _cookieAlertRejectAccept('https://taylorsailing.com/shop');
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 10.0,
                        // fixedSize: Size((width * 0.75), (height / 5.5)),
                        fixedSize: Size(elevatedButtonWidth, elevatedButtonHeight),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 3.0, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        backgroundColor: Colors.transparent),
                    child: Text(
                      'Visit us at: taylorsailing.com/shop',
                      style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _cookieAlertRejectAccept(String urlValue) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: StyledText(
          text: '<bold>Entering a website that requires (or may require) cookies</bold>',
          tags: {
            'bold': StyledTextTag(
              style: Theme.of(context).textTheme.titleSmall,
            ),
          },
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              _launchURLBrowser(urlValue);
            },
            child: Container(
              color: Colors.greenAccent,
              padding: const EdgeInsets.all(14),
              child: const Text('Accept'),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              // _launchURLBrowser('https://taylorsailing.com/shop');
            },
            child: Container(
              color: Colors.redAccent,
              padding: const EdgeInsets.all(14),
              child: const Text('Reject'),
            ),
          ),
        ],
      ),
    );
  }

  _launchURLBrowser(String urlValue) async {
    var url = Uri.parse(urlValue);
    if (await canLaunchUrl(url)) {
      debugPrint('Inside of if means canLaunchUrl ok');
      // await launchUrl(url,
      //     mode: LaunchMode.platformDefault,
      //     webViewConfiguration: WebViewConfiguration(enableJavaScript: true),
      //     webOnlyWindowName: '_self');
      await launchUrl(url);
    } else {
      debugPrint('After the else means an error: $url');
      throw 'Could not launch $url';
    } //else
  } //_launchURLBrowser
}
