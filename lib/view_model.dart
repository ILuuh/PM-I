import 'package:flutter/foundation.dart';

class LanguagueViewModel extends ChangeNotifier {

  List<String> _languages= [];

  LanguagueViewModel(){
    _languages = <String>[
      "Dart",
      "c#",
      "Javascript",
      "SQL"
    ];
  }

  void addMoreLanguagens() {
    _languages.add("Java");
    _languages.add("Golang");
    _languages.add("Kotlin");
    _languages.add("Swift");

    notifyListeners();
  }


  List<String> get languages => _languages;
}