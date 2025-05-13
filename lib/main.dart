import 'package:dartcoder/helpers/navigation/router.dart';
import 'package:dartcoder/helpers/theme.dart';
import 'package:dartcoder/services/cache_service.dart';
import 'package:flutter/material.dart';

import 'helpers/text_editor.dart';

final isDarkTheme = ValueNotifier<bool>(true);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await cacheService.init();
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

final cacheService = CacheService();

final editor = TextEditor(cacheService: cacheService);
