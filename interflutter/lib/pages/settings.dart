// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:interflutter/main.dart';

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({super.key});

  @override
  State<ChangeLanguage> createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  var languageData = [
    {
      'defaultNameLangage': 'Français',
      'typeFlag': 'fr',
      'typeLangage': 'fr',
      'isCheck': false
    },
    {
      'defaultNameLangage': 'Anglais',
      'typeFlag': 'gb',
      'typeLangage': 'en',
      'isCheck': false
    },
    {
      'defaultNameLangage': 'Espagnol',
      'typeFlag': 'es',
      'typeLangage': 'es',
      'isCheck': true
    }
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final oldCheckboxTheme = theme.checkboxTheme;

    final newCheckBoxTheme = oldCheckboxTheme.copyWith(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        title: const Text('Choisissez une langue'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 25),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: languageData.length,
              itemBuilder: (context, index) {
                return Theme(
                  data: theme.copyWith(checkboxTheme: newCheckBoxTheme),
                  child: CheckboxListTile(
                    contentPadding: const EdgeInsets.all(10),
                    activeColor: Colors.green[600],
                    dense: true,
                    title: Text(
                      languageData[index]['defaultNameLangage'].toString(),
                      style: const TextStyle(color: Colors.black),
                    ),
                    secondary: ClipOval(
                      child: Image.asset(
                        'icons/flags/png/${languageData[index]['typeFlag']}.png',
                        package: 'country_icons',
                        height: 40,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    value:
                        languageData[index]['isCheck'] == true ? true : false,
                    onChanged: (bool? value) {
                      setState(() {
                        languageData[index]['isCheck'] = value as Object;
                        //Locale(languageData[index]['typeLangage'].toString())
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
