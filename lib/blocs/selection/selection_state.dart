part of 'selection_cubit.dart';

enum SelectionChoice {
  partOneFundamental,
  partTwoWhenBoatsMeet,
  partTwoWhenBoatsMeetSectionA,
  partTwoWhenBoatsMeetSectionB,
  partTwoWhenBoatsMeetSectionC,
  partTwoWhenBoatsMeetSectionD,
  partThreeConduct,
  partFourOther,
  partFourOtherSectionA,
  partFourOtherSectionB,
  partFiveProtests,
  partFiveProtestsSectionA,
  partFiveProtestsSectionB,
  partFiveProtestsSectionC,
  partFiveProtestsSectionD,
  partSixEntry,
  partSevenRace,
}

class SelectionState extends Equatable {
  final SelectionChoice selectionChoice;
  const SelectionState({
    this.selectionChoice = SelectionChoice.partOneFundamental,
  });

  factory SelectionState.initial() {
    return const SelectionState();
  }

  @override
  List<Object> get props => [selectionChoice];

  SelectionState copyWith({
    SelectionChoice? selectionChoice,
  }) {
    return SelectionState(
      selectionChoice: selectionChoice ?? this.selectionChoice,
    );
  }

  @override
  String toString() => 'SelectionState(selectionChoice: $selectionChoice)';
}
