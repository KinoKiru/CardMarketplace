import 'package:card_marketplace/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();

  runApp(App(
    locale: pref.getString('locale') ?? 'en',
  ));
}

class App extends StatefulWidget {
  const App({super.key, required this.locale});
  final String locale;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cardmarketplace',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: <LocalizationsDelegate<dynamic>>[
        FlutterI18nDelegate(
          translationLoader: FileTranslationLoader(
            forcedLocale: Locale(widget.locale),
            fallbackFile: 'en',
            useScriptCode: false,
            useCountryCode: false,
          ),
          missingTranslationHandler: (String? key, Locale? locale) {
            print(
              '--- Missing Key: $key, languageCode: ${locale?.languageCode}',
            );
          },
        ),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      locale: Locale(widget.locale),
      builder: FlutterI18n.rootAppBuilder(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
