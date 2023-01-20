import 'package:flutter/material.dart';

class LanguageProvider extends InheritedWidget {
  final Function(Locale) onChangeLanguage;

  const LanguageProvider(
      {Key? key, required this.onChangeLanguage, required Widget child})
      : super(key: key, child: child);

  static LanguageProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LanguageProvider>();
  }

  @override
  bool updateShouldNotify(LanguageProvider oldWidget) {
    return onChangeLanguage != oldWidget.onChangeLanguage;
  }
}
