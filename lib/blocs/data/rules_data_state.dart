part of 'rules_data_cubit.dart';

abstract class RulesDataState extends Equatable {}

class InitialRulesDataState extends RulesDataState {
  @override
  List<Object> get props => [];
}

class LoadingRulesDataState extends RulesDataState {
  @override
  List<Object> get props => [];
}

class LoadedRulesDataState extends RulesDataState {
  LoadedRulesDataState(
    this.loadedRulesData,
  );

  final List<RulesDataModel> loadedRulesData;

  @override
  List<Object> get props => [loadedRulesData];

  @override
  String toString() => 'LoadedRulesDataState(loadedRulesData: $loadedRulesData)';
}

class ErrorRulesDataState extends RulesDataState {
  @override
  List<Object> get props => [];
}
