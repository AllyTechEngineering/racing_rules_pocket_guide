import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sailing_rules/utilities/calculate_button_size_class.dart';
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
                      _launchURLBrowser('https://www.linkedin.com/in/bob-taylor-mscs-mba/');
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 10.0,
                        // fixedSize: Size((width * 0.75), (height / 5.5)),
                        fixedSize: Size(elevatedButtonHeight, elevatedButtonWidth),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 3.0, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        backgroundColor: Colors.transparent),
                    child: Text(
                      'Bob Taylor LinkedIn',
                      style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
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
                      _launchURLBrowser('https://github.com/AllyTechEngineering/');
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 10.0,
                        // fixedSize: Size((width * 0.75), (height / 5.5)),
                        fixedSize: Size(elevatedButtonWidth, elevatedButtonHeight),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 3.0, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        backgroundColor: Colors.transparent),
                    child: Text(
                      'Bob Taylor Portfolio',
                      style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
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
                      _launchURLBrowser('https://allytechllc.com');
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 10.0,
                        // fixedSize: Size((width * 0.75), (height / 5.5)),
                        fixedSize: Size(elevatedButtonWidth, elevatedButtonHeight),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 3.0, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        backgroundColor: Colors.transparent),
                    child: Text(
                      'Developer\'s Website',
                      style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
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
                      _launchURLBrowser('https://taylorsailing.com/shop');
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 10.0,
                        // fixedSize: Size((width * 0.75), (height / 5.5)),
                        fixedSize: Size(elevatedButtonWidth, elevatedButtonHeight),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 3.0, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        backgroundColor: Colors.transparent),
                    child: Text(
                      'Taylor Sailing Supplies',
                      style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _launchURLBrowser(String urlValue) async {
    var url = Uri.parse(urlValue);
    if (await canLaunchUrl(url)) {
      print('Inside of if means canLaunchUrl ok');
      await launchUrl(url);
    } else {
      print('After the else means an error: $url');
      throw 'Could not launch $url';
    } //else
  } //_launchURLBrowser
}
