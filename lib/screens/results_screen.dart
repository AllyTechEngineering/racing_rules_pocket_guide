import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sailing_rules/blocs/data/rules_data_cubit.dart';
import 'package:sailing_rules/blocs/selection/selection_cubit.dart';
import 'package:sailing_rules/utilities/calculate_button_size_class.dart';
import 'package:styled_text/styled_text.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({super.key});

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  final CalculateButtonSizeClass calculateButtonSizeClass = CalculateButtonSizeClass();

  dynamic orientation, size, height, width;
  double elevatedButtonWidth = 0.0;
  double elevatedButtonHeight = 0.0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    elevatedButtonWidth = calculateButtonSizeClass.calculateButtonWidth(context, 1);
    elevatedButtonHeight = calculateButtonSizeClass.calculateButtonHeight(context, 2.5);
    debugPrint('ResultsScreen width = $width\n ResultsScreen height = $height');
    return BlocBuilder<SelectionCubit, SelectionState>(
      builder: (context, state) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_circle_left_outlined,
                ),
                onPressed: () => context.pop(),
              ),
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
                textLabel(),
                style: Theme.of(context).textTheme.displayLarge,
                textAlign: TextAlign.center,
              ),
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/ocean_background.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            body: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      opacity: 1.0,
                      image: AssetImage('assets/images/ocean_background.png'),
                      fit: BoxFit.cover)),
              child: BlocBuilder<RulesDataCubit, RulesDataState>(
                builder: (context, state) {
                  if (state is LoadingRulesDataState) {
                    // debugPrint('in results if LoadingRulesDataState and showing state: $state');
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is ErrorRulesDataState) {
                    return Center(
                      child: Text(
                        'File Error',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    );
                  } else if (state is LoadedRulesDataState) {
                    final rulesDataResultsListValue = state.loadedRulesData;
                    // debugPrint('in results if LoadedRulesDataState and showing state: $state');
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: rulesDataResultsListValue.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ElevatedButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (ctx) => AlertDialog(
                                      title: StyledText(
                                        text:
                                            '<bold>${rulesDataResultsListValue[index].title}</bold>',
                                        tags: {
                                          'bold': StyledTextTag(
                                            style: Theme.of(context).textTheme.titleSmall,
                                          ),
                                        },
                                        // style: Theme.of(context).textTheme.bodySmall,
                                        // textAlign: TextAlign.start,
                                      ),
                                      content: Text(
                                        rulesDataResultsListValue[index].rule,
                                        style: Theme.of(context).textTheme.bodyMedium,
                                        textAlign: TextAlign.start,
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(ctx).pop();
                                          },
                                          child: Container(
                                            color: Colors.greenAccent,
                                            padding: const EdgeInsets.all(14),
                                            child: const Text('Dismiss'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
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
                                        // width: double.infinity,
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
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(20.0, 0.0, 8.0, 0.0),
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: StyledText(
                                                  text:
                                                      '<bold>${rulesDataResultsListValue[index].title}</bold>',
                                                  tags: {
                                                    'bold': StyledTextTag(
                                                      style: Theme.of(context).textTheme.titleLarge,
                                                    ),
                                                  },
                                                  // style: Theme.of(context).textTheme.bodySmall,
                                                  // textAlign: TextAlign.start,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(20.0, 0.0, 8.0, 4.0),
                                              child: Text(
                                                rulesDataResultsListValue[index].rule,
                                                softWrap: true,
                                                style: Theme.of(context).textTheme.titleMedium,
                                                textAlign: TextAlign.start,
                                              ),
                                            ),
                                          ],
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
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
          ),
        );
      },
    );
  }

  String textLabel() {
    String tempValue = context.watch<SelectionCubit>().state.selectionChoice.name;
    switch (tempValue) {
      case 'partOneFundamental':
        tempValue = 'Part 1 Fundamental';
      case 'partTwoWhenBoatsMeetSectionA':
        tempValue = 'Part 2 When Boats Meet';
      case 'partTwoWhenBoatsMeetSectionB':
        tempValue = 'Part 2 When Boats Meet';
      case 'partTwoWhenBoatsMeetSectionC':
        tempValue = 'Part 2 When Boats Meet';
      case 'partTwoWhenBoatsMeetSectionD':
        tempValue = 'Part 2 When Boats Meet';
      case 'partThreeConduct':
        tempValue = 'Part 3 Conduct';
      case 'partFourOtherSectionA':
        tempValue = 'Part 4 Other Req.';
      case 'partFourOtherSectionB':
        tempValue = 'Part 4 Other Req.';
      case 'partFiveProtestsSectionA':
        tempValue = 'Part 5 Protests';
      case 'partFiveProtestsSectionB':
        tempValue = 'Part 5 Protests';
      case 'partFiveProtestsSectionC':
        tempValue = 'Part 5 Protests';
      case 'partFiveProtestsSectionD':
        tempValue = 'Part 5 Protests';
      case 'partSixEntry':
        tempValue = 'Part 6 Entry & Qual.';
      case 'partSevenRace':
        tempValue = 'Part 7 Race Org.';
      default:
        tempValue = 'Part 1 Fundamental Rules';
    }
    return tempValue;
  }
}
