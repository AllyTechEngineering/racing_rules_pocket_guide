import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/rules_data_model.dart';

class RulesDataRepository {
  Future<List<RulesDataModel>> getRulesData(String jsonFileName, String rulesChoiceName) async {
    try {
      // debugPrint(
      //     'in RulesDataRepository first part of try file name: $jsonFileName\n choice name:  $rulesChoiceName');
      final String rulesDataResults = await rootBundle.loadString(jsonFileName);
      // debugPrint('raw json file rulesDataResults: $rulesDataResults');
      final rulesDataResultsJson = await jsonDecode(rulesDataResults);
      // debugPrint('decode json file rulesDataResultsJson: $rulesDataResultsJson');
      final rulesDataResultsList = List<RulesDataModel>.of(
        rulesDataResultsJson[rulesChoiceName].map<RulesDataModel>(
          (json) {
            return RulesDataModel(
              title: json['Title'],
              rule: json['Rule'],
            );
          },
        ),
      );
      // debugPrint('RulesDataRepository rulesDataResultsList: $rulesDataResultsList');
      return rulesDataResultsList;
    } catch (e) {
      throw 'error $e';
    }
  }
}
