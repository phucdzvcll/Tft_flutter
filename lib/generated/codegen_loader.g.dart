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

  static const Map<String,dynamic> en = {
  "champions": "Champions",
  "top_team": "Top Team",
  "item": "Item",
  "user": "User"
};
static const Map<String,dynamic> vi = {
  "champions": "Tướng",
  "top_team": "Top đội hình",
  "item": "Trang bị",
  "user": "Cá nhân"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "vi": vi};
}
