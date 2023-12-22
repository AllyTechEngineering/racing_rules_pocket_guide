import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../utilities/responsive_adaptive_class.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ResponsiveAdaptiveClass responsiveAdaptiveClass = ResponsiveAdaptiveClass();

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
    return MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                icon: const Icon(
                  Icons.description_outlined,
                  // color: Colors.white,
                ),
                // iconSize: 40.0,
                onPressed: () {
                  // context.read<SignalsSelectionCubit>().setSignalsSelectionChoice('postponement');
                  context.go('/definition_screen');
                }),
            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.settings,
                  // color: Colors.white,
                ),
                onPressed: () => context.go('/settings_screen'),
              ),
            ],
            centerTitle: true,
            title: Text(
              'Sailing Racing Signals',
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
          ),
        ));
  }
}
