import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sailing_rules/models/selections_model.dart';
import 'package:sailing_rules/screens/results_screen.dart';
import 'package:sailing_rules/utilities/calculate_button_size_class.dart';
import 'package:sailing_rules/utilities/constants.dart';
import '../blocs/selection/selection_cubit.dart';
import '../utilities/responsive_adaptive_class.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ResponsiveAdaptiveClass responsiveAdaptiveClass = ResponsiveAdaptiveClass();
  final CalculateButtonSizeClass calculateButtonSizeClass = CalculateButtonSizeClass();
  final SelectionsModel selectionsModel = SelectionsModel();

  dynamic orientation, size, height, width;
  double fontSizeValue = 0.0;
  double classFontSize = 0.0;
  double appBarTitleFontSize = 0.0;
  double elevatedButtonWidth = 0.0;
  double elevatedButtonHeight = 0.0;
  double classImageHeight = 0.0;
  double classImageWidth = 0.0;
  final _selectionChoiceCode = <String>[
    'partOneFundamental',
    // 'partTwoWhenBoatsMeet',
    'partTwoWhenBoatsMeetSectionA',
    'partTwoWhenBoatsMeetSectionB',
    'partTwoWhenBoatsMeetSectionC',
    'partTwoWhenBoatsMeetSectionD',
    'partThreeConduct',
    // 'partFourOther',
    'partFourOtherSectionA',
    'partFourOtherSectionB',
    // 'partFiveProtests',
    'partFiveProtestsSectionA',
    'partFiveProtestsSectionB',
    'partFiveProtestsSectionC',
    'partFiveProtestsSectionD',
    'partSixEntry',
    'partSevenRace',
  ];

  @override
  Widget build(BuildContext context) {
    responsiveAdaptiveClass.orientation = MediaQuery.of(context).orientation;
    responsiveAdaptiveClass.size = MediaQuery.of(context).size;
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    responsiveAdaptiveClass.height = responsiveAdaptiveClass.size.height;
    responsiveAdaptiveClass.width = responsiveAdaptiveClass.size.width;
    elevatedButtonWidth = calculateButtonSizeClass.calculateButtonWidth(context, 1);
    elevatedButtonHeight = calculateButtonSizeClass.calculateButtonHeight(context, 1);
    debugPrint('Home Screen width = $width\nHome Screen height = $height');
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(
                Icons.description_outlined,
              ),
              onPressed: () {
                // context.read<SignalsSelectionCubit>().setSignalsSelectionChoice('postponement');
                context.go('/definition_screen');
              }),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.settings,
              ),
              onPressed: () => context.go('/settings_screen'),
            ),
          ],
          centerTitle: true,
          title: Text(
            'Racing Rules\nPocket Guide',
            style: Theme.of(context).textTheme.displayLarge,
            softWrap: true,
            textAlign: TextAlign.center,
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
                  fit: BoxFit.cover)),
          child: ListView.builder(
            itemCount: selectionsModel.selectionPartNames.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<SelectionCubit>()
                          .setSelectionChoice(_selectionChoiceCode[index]);
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ResultsScreen(),
                          ),
                        );
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(elevatedButtonWidth, elevatedButtonHeight),
                      elevation: 10.0,
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 3.0, style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        // Dark blue gradient with white text
                        Expanded(
                          child: Container(
                            width: elevatedButtonWidth,
                            height: elevatedButtonHeight,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFF2D9596),
                                  Color(0xFF265073),
                                ],
                                stops: [0.0, 1.0],
                              ),
                              borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(35.0),
                                left: Radius.circular(35.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20.0, 8.0, 4.0, 8.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  selectionsModel.selectionPartNames[index],
                                  style: Theme.of(context).textTheme.bodyLarge,
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
