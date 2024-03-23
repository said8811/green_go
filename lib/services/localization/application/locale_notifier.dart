import 'dart:ui';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum AppLocale {
  russian(name: 'Русский', icon: 'assets/icons/ru.svg', code: 'ru'),
  uzbek(name: "O'zbek", icon: 'assets/icons/uz.svg', code: 'uz'),
  english(name: 'English', icon: 'assets/icons/en.svg', code: 'en');

  static AppLocale fromLocale(Locale locale) {
    return switch (locale.languageCode) {
      'en' => AppLocale.english,
      'uz' => AppLocale.uzbek,
      _ => AppLocale.russian,
    };
  }

  static Locale fromAppLocale(AppLocale locale) {
    return switch (locale.code) {
      'en' => const Locale('en'),
      'uz' => const Locale('uz'),
      _ => const Locale('ru'),
    };
  }

  const AppLocale({
    required this.name,
    required this.icon,
    required this.code,
  });

  final String name;
  final String icon;
  final String code;
}

const localeRu = Locale('ru');
const localeUz = Locale('uz');
const localeEn = Locale('en');

const languageCode = 'language_code';

class LocaleNotifier extends StateNotifier<Locale> {
  final SharedPreferences _prefs;
  LocaleNotifier(this._prefs) : super(const Locale('ru')) {
    fetchLocale();
  }

  void fetchLocale() {
    if (_prefs.getString(languageCode) == null) {
      state = localeUz;
    } else {
      state = Locale(_prefs.getString(languageCode)!);
    }
  }

  Future<void> changeLanguage(AppLocale locale) async {
    if (locale == AppLocale.russian) {
      await _prefs.setString(languageCode, 'ru');
      state = localeRu;
    } else if (locale == AppLocale.english) {
      await _prefs.setString(languageCode, 'en');
      state = localeEn;
    } else {
      await _prefs.setString(languageCode, 'uz');
      state = localeUz;
    }
  }
}
