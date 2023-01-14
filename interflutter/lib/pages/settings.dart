// ignore_for_file: dead_code

import 'package:flutter/material.dart';

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({super.key});

  @override
  State<ChangeLanguage> createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  Locale _selectedLocale = const Locale('fr');
  //String _selectedLanguage = "fr";

  void _selectLanguage(Locale locale) {
    setState(() {
      _selectedLocale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final oldCheckboxTheme = theme.checkboxTheme;

    final newCheckBoxTheme = oldCheckboxTheme.copyWith(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
    );

    var selected = true;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seetings'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 15, bottom: 8.0),
            child: Text(
              'Choose Language',
              style: TextStyle(
                fontSize: 28,
                color: Color.fromARGB(255, 44, 44, 44),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      _selectedLocale = const Locale('fr');
                      _selectLanguage(_selectedLocale);
                    },
                    child: Card(
                      shadowColor: selected ? Colors.teal : Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 35,
                          right: 25,
                          top: 18,
                          bottom: 18,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: ClipRRect(
                                child: Image.asset(
                                  'icons/flags/png/fr.png',
                                  package: 'country_icons',
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 0),
                              child: Text(
                                'Francais',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 66, 65, 65),
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      _selectedLocale = const Locale('es');
                      _selectLanguage(_selectedLocale);
                    },
                    child: Card(
                      shadowColor: selected ? Colors.teal : Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 35,
                          right: 25,
                          top: 18,
                          bottom: 18,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: ClipRRect(
                                child: Image.asset(
                                  'icons/flags/png/es.png',
                                  package: 'country_icons',
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 0),
                              child: Text(
                                'Española',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 66, 65, 65),
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      _selectedLocale = const Locale('en');
                      _selectLanguage(_selectedLocale);
                    },
                    child: Card(
                      shadowColor: selected ? Colors.teal : Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 35,
                          right: 25,
                          top: 18,
                          bottom: 18,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: ClipRRect(
                                child: Image.asset(
                                  'icons/flags/png/gb.png',
                                  package: 'country_icons',
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 0),
                              child: Text(
                                'English',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 66, 65, 65),
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LanguagesListState extends State<LanguagesList> {
  var langageData = [
    {
      'defaultNameLangage': 'Français',
      'typeFlag': 'fr',
      'typeLangage': 'fr',
      'isCheck': false
    },
    {
      'defaultNameLangage': 'Anglais',
      'typeFlag': 'en',
      'typeLangage': 'en',
      'isCheck': false
    },
    {
      'defaultNameLangage': 'Espagnol',
      'typeFlag': 'es',
      'typeLangage': 'es',
      'isCheck': false
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        title: const Text('Choisissez une langue'),
      ),
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: langageData.length,
                itemBuilder: (context, index) {
                  return Theme(
                    data: theme.copyWith(checkboxTheme: newCheckBoxTheme),
                    child: CheckboxListTile(
                      contentPadding: EdgeInsets.all(10),
                      activeColor: Colors.green[600],
                      dense: true,
                      title: Text(
                        langageData[index]['defaultNameLangage'].toString(),
                      ),
                      secondary: ClipOval(
                        child: Image.asset(
                          langageData[index]['typeFlag'].toString(),
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      value:
                          // ignore: unrelated_type_equality_checks
                          langageData[index]['isCheck'].toString() == true
                              ? true
                              : false,
                      onChanged: (bool value) {
                        itemChange(val, index);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void itemChange(bool val, int index) async {
    setState(() {
      langageData[index]['isCheck'] = val;
      /* context.read<LanguageChangeProvider>().changeLocale(
          langageData[index]['typeLangage'], langageData[index]['isCheck']); */
    });
  }
}
