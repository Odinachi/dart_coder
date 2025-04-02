import 'package:dartcoder/helpers/theme.dart';
import 'package:dartcoder/views/dart_coder.dart';
import 'package:flutter/material.dart';

final isDarkTheme = ValueNotifier<bool>(true);

void main() {
  runApp(ValueListenableBuilder(
      valueListenable: isDarkTheme,
      builder: (_, isDark, __) {
        return MaterialApp(
          themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
          theme: lightTheme,
          darkTheme: darkTheme,
          home: DartCompilerApp(),
          debugShowCheckedModeBanner: false,
        );
      }));
}
