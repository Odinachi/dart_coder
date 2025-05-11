import 'package:dartcoder/helpers/navigation/router.dart';
import 'package:dartcoder/helpers/theme.dart';
import 'package:flutter/material.dart';

final isDarkTheme = ValueNotifier<bool>(true);

void main() {
  runApp(
    ValueListenableBuilder(
        valueListenable: isDarkTheme,
        builder: (_, isDark, __) {
          return MaterialApp(
            navigatorKey: AppRouter.navKey,
            themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
            theme: lightTheme,
            darkTheme: darkTheme,
            debugShowCheckedModeBanner: false,
            onGenerateRoute: AppRouter.generateRoute,
            initialRoute: AppRouter.home,
          );
        }),
  );
}
