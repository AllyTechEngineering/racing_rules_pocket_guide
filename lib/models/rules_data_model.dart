import 'package:equatable/equatable.dart';

class RulesDataModel extends Equatable {
  final String title;
  final String rule;

  const RulesDataModel({
    this.title = '',
    this.rule = '',
  });

  @override
  List<Object> get props => [title, rule];

  RulesDataModel copyWith({
    String? title,
    String? rule,
  }) {
    return RulesDataModel(
      title: title ?? this.title,
      rule: rule ?? this.rule,
    );
  }

  @override
  String toString() => 'RulesDataModel(part: $title, rule: $rule)';
}
