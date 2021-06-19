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
  "change_theme": "Change theme",
  "change_language": "Change language",
  "warning_sure": "Are you sure?",
  "ask_again": "Do you want to exit app?",
  "stay_here": "Stay here!",
  "exit_app": "Exit App",
  "screen_1": "Screen 1",
  "screen_3": "Screen 2",
  "screen_2": "Screen 3"
};
static const Map<String,dynamic> vi = {
  "change_theme": "Đổi theme",
  "change_language": "Đổi ngôn ngữ",
  "warning_sure": "Bạn chắc chứ?",
  "ask_again": "Bạn muốn thoát khỏi ứng dụng?",
  "stay_here": "Ở lại!",
  "exit_app": "Thoát",
  "screen_1": "Màn hình 1",
  "screen_3": "Màn hình 2",
  "screen_2": "Màn hình 3"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "vi": vi};
}
