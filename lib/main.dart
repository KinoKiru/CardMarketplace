import 'package:card_marketplace/api/symbol_client.dart';
import 'package:card_marketplace/components/navigation.dart';
import 'package:card_marketplace/models/list_wrapper.dart';
import 'package:card_marketplace/models/symbol.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();

  final String locale = pref.getString('locale') ?? 'en';
  final bool isDarkMode = pref.getBool('isDarkMode') ?? false;

  runApp(App(
    locale: locale,
    isDarkMode: isDarkMode,
  ));
}

class App extends StatefulWidget {
  App({super.key, required this.locale, required this.isDarkMode});
  String locale;
  bool isDarkMode;

  /// Global function for app
  static _AppState of(BuildContext context) =>
      context.findAncestorStateOfType<_AppState>()!;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  /// Set's theme
  void changeTheme(bool themeMode) {
    setState(() {
      widget.isDarkMode = themeMode;
    });
  }

  void changeLocale(String newLocale) {
    setState(() {
      widget.locale = newLocale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CardMarketplace',
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
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue.shade800,
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue.shade800,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: widget.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: const Navigation(),
    );
  }
}
