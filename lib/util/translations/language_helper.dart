import 'package:flutter/material.dart';

class LanguageHelper {
  convertLangNameToLocale(String langNameToConvert) {
    Locale convertedLocale;

    switch (langNameToConvert) {
      case 'English':
        convertedLocale = Locale('en');
        break;
      case 'Français':
        convertedLocale = Locale('fr');
        break;
      case 'Arabe':
        convertedLocale = Locale('ar');
        break;
      default:
        convertedLocale = Locale('en');
    }

    return convertedLocale;
  }

  convertLocaleToLangName(String localeToConvert) {
    String langName;

    switch (localeToConvert) {
      case 'en':
        langName = "English";
        break;
      case 'fr':
        langName = "Français";
        break;
      case 'es':
        langName = "Español";
        break;
      case 'ru':
        langName = "Русский";
        break;
      default:
        langName = "English";
    }

    return langName;
  }
}
