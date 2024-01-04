import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

part 'selection_state.dart';

class SelectionCubit extends Cubit<SelectionState> {
  SelectionCubit() : super(SelectionState.initial());
  void setSelectionChoice(String selectionChoiceCode) {
    debugPrint('in SelectionState selectionChoiceCode = $selectionChoiceCode');
    switch (selectionChoiceCode) {
      case 'partOneFundamental':
        emit(state.copyWith(selectionChoice: SelectionChoice.partOneFundamental));
      case 'partTwoWhenBoatsMeetSectionA':
        emit(state.copyWith(selectionChoice: SelectionChoice.partTwoWhenBoatsMeetSectionA));
      case 'partTwoWhenBoatsMeetSectionB':
        emit(state.copyWith(selectionChoice: SelectionChoice.partTwoWhenBoatsMeetSectionB));
      case 'partTwoWhenBoatsMeetSectionC':
        emit(state.copyWith(selectionChoice: SelectionChoice.partTwoWhenBoatsMeetSectionC));
      case 'partTwoWhenBoatsMeetSectionD':
        emit(state.copyWith(selectionChoice: SelectionChoice.partTwoWhenBoatsMeetSectionD));
      case 'partThreeConduct':
        emit(state.copyWith(selectionChoice: SelectionChoice.partThreeConduct));
      case 'partFourOtherSectionA':
        emit(state.copyWith(selectionChoice: SelectionChoice.partFourOtherSectionA));
      case 'partFourOtherSectionB':
        emit(state.copyWith(selectionChoice: SelectionChoice.partFourOtherSectionB));
      case 'partFiveProtestsSectionA':
        emit(state.copyWith(selectionChoice: SelectionChoice.partFiveProtestsSectionA));
      case 'partFiveProtestsSectionB':
        emit(state.copyWith(selectionChoice: SelectionChoice.partFiveProtestsSectionB));
      case 'partFiveProtestsSectionC':
        emit(state.copyWith(selectionChoice: SelectionChoice.partFiveProtestsSectionC));
      case 'partFiveProtestsSectionD':
        emit(state.copyWith(selectionChoice: SelectionChoice.partFiveProtestsSectionD));
      case 'partSixEntry':
        emit(state.copyWith(selectionChoice: SelectionChoice.partSixEntry));
      case 'partSevenRace':
        emit(state.copyWith(selectionChoice: SelectionChoice.partSevenRace));
      default:
        emit(state.copyWith(selectionChoice: SelectionChoice.partOneFundamental));
    }
  }
}
