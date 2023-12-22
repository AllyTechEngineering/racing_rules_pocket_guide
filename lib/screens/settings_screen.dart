import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info/package_info.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utilities/responsive_adaptive_class.dart';
import '../utilities/url_launcher.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final ResponsiveAdaptiveClass responsiveAdaptiveClass = ResponsiveAdaptiveClass();
  String version = 'Unknown';
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
  void initState() {
    _loadVersionNumber();
    super.initState();
  }

  Future<void> _loadVersionNumber() async {
    try {
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      setState(() {
        version = packageInfo.version;
      });
    } catch (e) {
      debugPrint('Error loading version number: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    responsiveAdaptiveClass.orientation = MediaQuery.of(context).orientation;
    responsiveAdaptiveClass.size = MediaQuery.of(context).size;
    responsiveAdaptiveClass.height = responsiveAdaptiveClass.size.height;
    responsiveAdaptiveClass.width = responsiveAdaptiveClass.size.width;
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
            ),
            onPressed: () => context.go('/'),
          ),
          centerTitle: true,
          title: Text(
            'About',
            style: TextStyle(
                fontSize: responsiveAdaptiveClass.appBarTitleFontSize =
                    responsiveAdaptiveClass.selectAppBarTitleFontSize(1.0)),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/ocean_background.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Ver: $version',
                style: TextStyle(
                    fontSize: responsiveAdaptiveClass.appBarTitleFontSize =
                        responsiveAdaptiveClass.selectAppBarTitleFontSize(1.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _launchURLBrowser(String urlValue) async {
    var url = Uri.parse(urlValue);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      debugPrint('After the else means an error: $url');
      throw 'Could not launch $url';
    }
  }
}
