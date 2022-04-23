// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ar = {
  "test": "اهلا",
  "home_title": "كل ما يجعلك سعيدا",
  "search_home": "ابحث عن طعام",
  "special_home": "موسمي خاص",
  "see_all": "مشاهدة الكل",
  "my_orders": "طلباتي",
  "edit_profile": "تعديل الملف الشخصي",
  "language_change": "تغيير اللغة",
  "about_us": "معلومات عنا",
  "log_out": "تسجيل الخروج",
  "cart": "سلة",
  "total": "المجموع",
  "order_confirm": "أكد الطلب"
};
static const Map<String,dynamic> en = {
  "test": "hi",
  "home_title": "Eat what makes you happy",
  "search_home": "Find your food",
  "special_home": "Seasonal Special",
  "see_all": "See all",
  "my_orders": "My orders",
  "edit_profile": "Edit Profile",
  "language_change": "Change language",
  "about_us": "About us",
  "log_out": "Log out",
  "cart": "Cart",
  "total": "Total",
  "order_confirm": "Confirm Order"
};
static const Map<String,dynamic> fr = {
  "test": "salut",
  "home_title": "Mange ce qui te rend heureux",
  "search_home": "Chercher de la nourriture",
  "special_home": "Special de Saison",
  "see_all": "Voir tous",
  "my_orders": "Mes commandes ",
  "edit_profile": "Editer le profile",
  "language_change": "Changer de langue",
  "about_us": "À propos de nous",
  "log_out": "Se déconnecter",
  "cart": "Panier",
  "total": "Totale",
  "order_confirm": "Confirmer L’ordre"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": ar, "en": en, "fr": fr};
}
