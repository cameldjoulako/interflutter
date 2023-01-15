import 'package:flutter/material.dart';

class ChangeLanguage with ChangeNotifier {
  Locale _locale = const Locale('es');

  ChangeLanguage(Locale locale) {
    _locale = locale;
  }

  Locale get locale => _locale;

  set locale(Locale locale) {
    _locale = locale;
    notifyListeners();
  }
}
