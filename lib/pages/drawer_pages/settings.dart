import 'package:card_marketplace/components/async_builder.dart';
import 'package:card_marketplace/components/custom_app_bar.dart';
import 'package:card_marketplace/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: FlutterI18n.translate(context, 'drawer.settings'),
      enableDrawer: false,
      body: SimpleAsyncBuilder(
        future: SharedPreferences.getInstance(),
        onLoad: (SharedPreferences pref, BuildContext context) => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              title: I18nText('settings.colorMode'),
              trailing: Switch(
                value: pref.getBool('isDarkMode')!,
                onChanged: (bool newValue) => {
                  pref.setBool('isDarkMode', newValue),
                  App.of(context).changeTheme(newValue)
                },
              ),
            ),
            ListTile(
              title: I18nText('settings.language'),
              trailing: DropdownButton<String>(
                  value: pref.getString('locale'),
                  items: const [
                    Locale('nl'),
                    Locale('es'),
                    Locale('en'),
                    Locale('de')
                  ]
                      .map(
                        (locale) => DropdownMenuItem<String>(
                          value: locale.languageCode,
                          child: Text(locale.languageCode),
                        ),
                      )
                      .toList(),
                  onChanged: (locale) async {
                    if (FlutterI18n.currentLocale(context)?.languageCode !=
                        locale) {
                      // Set locale for next time
                      pref.setString('locale', locale!);
                      // Globally reload to new locale
                      App.of(context).changeLocale(locale);
                      await FlutterI18n.refresh(context, Locale(locale));
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> localeButtons(
    BuildContext context, SharedPreferences preferences) {
  List<Widget> buttons = List<Widget>.empty(growable: true);
  for (final String locale in <String>['nl', 'es', 'en', 'de']) {
    buttons.add(ElevatedButton(
        onPressed: () async {
          preferences.setString('locale', locale);
          await FlutterI18n.refresh(context, Locale(locale));
        },
        child: Text(locale)));
  }
  return buttons;
}
