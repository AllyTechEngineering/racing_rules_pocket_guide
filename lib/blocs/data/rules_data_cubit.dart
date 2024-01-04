import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:sailing_rules/blocs/selection/selection_cubit.dart';
import 'package:sailing_rules/models/rules_data_model.dart';

import '../../repositories/rules_data_repository.dart';

part 'rules_data_state.dart';

class RulesDataCubit extends Cubit<RulesDataState> {
  late final StreamSubscription selectionCubitSubscription;
  final SelectionCubit selectionCubit;
  final RulesDataRepository rulesDataRepository;

  RulesDataCubit({required this.rulesDataRepository, required this.selectionCubit})
      : super(InitialRulesDataState()) {
    selectionCubitSubscription = selectionCubit.stream.listen((SelectionState selectionState) {
      getRulesDataResults();
    });
    getRulesDataResults();
  }
  void getRulesDataResults() async {
    try {
      debugPrint(
          'RulesDataCubit getRulesDataResults selectionChoice: ${selectionCubit.state.selectionChoice.name}');
      emit(LoadingRulesDataState());

      String tempSelectionChoiceCode = selectionCubit.state.selectionChoice.name;
      switch (tempSelectionChoiceCode) {
        case 'partOneFundamental':
          emit(
            LoadedRulesDataState(
              await rulesDataRepository.getRulesData(
                  'lib/assets/json_data_files/part_one_fundamental_rules.json',
                  'partOneFundamental'),
            ),
          );
        case 'partTwoWhenBoatsMeetSectionA':
          emit(
            LoadedRulesDataState(
              await rulesDataRepository.getRulesData(
                  'lib/assets/json_data_files/part_two_section_a_when_boats_meet.json',
                  'partTwoWhenBoatsMeetSectionA'),
            ),
          );
        case 'partTwoWhenBoatsMeetSectionB':
          emit(
            LoadedRulesDataState(
              await rulesDataRepository.getRulesData(
                  'lib/assets/json_data_files/part_two_section_b_when_boats_meet.json',
                  'partTwoWhenBoatsMeetSectionB'),
            ),
          );
        case 'partTwoWhenBoatsMeetSectionC':
          emit(
            LoadedRulesDataState(
              await rulesDataRepository.getRulesData(
                  'lib/assets/json_data_files/part_two_section_c_when_boats_meet.json',
                  'partTwoWhenBoatsMeetSectionC'),
            ),
          );
        case 'partTwoWhenBoatsMeetSectionD':
          emit(
            LoadedRulesDataState(
              await rulesDataRepository.getRulesData(
                  'lib/assets/json_data_files/part_two_section_d_when_boats_meet.json',
                  'partTwoWhenBoatsMeetSectionD'),
            ),
          );
        case 'partThreeConduct':
          emit(
            LoadedRulesDataState(
              await rulesDataRepository.getRulesData(
                  'lib/assets/json_data_files/part_three_conduct_of_race.json', 'partThreeConduct'),
            ),
          );
        case 'partFourOtherSectionA':
          emit(
            LoadedRulesDataState(
              await rulesDataRepository.getRulesData(
                  'lib/assets/json_data_files/part_four_section_a_other_requirements.json',
                  'partFourOtherSectionA'),
            ),
          );
        case 'partFourOtherSectionB':
          emit(
            LoadedRulesDataState(
              await rulesDataRepository.getRulesData(
                  'lib/assets/json_data_files/part_four_section_b_other_requirements.json',
                  'partFourOtherSectionB'),
            ),
          );
        case 'partFiveProtestsSectionA':
          emit(
            LoadedRulesDataState(
              await rulesDataRepository.getRulesData(
                  'lib/assets/json_data_files/part_five_section_a_protests.json',
                  'partFiveProtestsSectionA'),
            ),
          );
        case 'partFiveProtestsSectionB':
          emit(
            LoadedRulesDataState(
              await rulesDataRepository.getRulesData(
                  'lib/assets/json_data_files/part_five_section_b_protests.json',
                  'partFiveProtestsSectionB'),
            ),
          );
        case 'partFiveProtestsSectionC':
          emit(
            LoadedRulesDataState(
              await rulesDataRepository.getRulesData(
                  'lib/assets/json_data_files/part_five_section_c_protests.json',
                  'partFiveProtestsSectionC'),
            ),
          );
        case 'partFiveProtestsSectionD':
          emit(
            LoadedRulesDataState(
              await rulesDataRepository.getRulesData(
                  'lib/assets/json_data_files/part_five_section_d_protests.json',
                  'partFiveProtestsSectionD'),
            ),
          );
        case 'partSixEntry':
          emit(
            LoadedRulesDataState(
              await rulesDataRepository.getRulesData(
                  'lib/assets/json_data_files/part_six_entry.json', 'partSixEntry'),
            ),
          );
        case 'partSevenRace':
          emit(
            LoadedRulesDataState(
              await rulesDataRepository.getRulesData(
                  'lib/assets/json_data_files/part_seven_race.json', 'partSevenRace'),
            ),
          );
        default:
          emit(
            LoadedRulesDataState(
              await rulesDataRepository.getRulesData(
                  'lib/assets/json_data_files/part_one_fundamental_rules.json',
                  'partOneFundamental'),
            ),
          );
      }
    } catch (e) {
      debugPrint('Error is: $e');
      rethrow;
    }
  }

  @override
  Future<void> close() {
    selectionCubitSubscription.cancel();
    return super.close();
  }
}
// if (selectionCubit.state.selectionChoice.name == 'partOneFundamental') {
//   final rulesDataResultDataList = await rulesDataRepository.getRulesData(
//       'lib/assets/json_data_files/part_one_fundamental_rules.json', 'partOneFundamental');
//   emit(LoadedRulesDataState(rulesDataResultDataList));
// } else if (selectionCubit.state.selectionChoice.name == 'partTwoWhenBoatsMeet') {
//   final rulesDataResultDataList = await rulesDataRepository.getRulesData(
//       'lib/assets/json_data_files/part_two_section_a_when_boats_meet.json',
//       'partTwoWhenBoatsMeet');
//   emit(LoadedRulesDataState(rulesDataResultDataList));
// }
