import 'dart:async';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_style/dart_style.dart';
import 'package:dartcoder/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_highlight/themes/atom-one-light.dart';
import 'package:flutter_highlight/themes/nord.dart';
import 'package:highlight/languages/dart.dart';

class DartCompilerApp extends StatefulWidget {
  const DartCompilerApp({super.key});

  @override
  State<DartCompilerApp> createState() => _DartCompilerAppState();
}

class _DartCompilerAppState extends State<DartCompilerApp>
    with SingleTickerProviderStateMixin {
  final controller = CodeController(
    text: '''void main() {
  print("Hello, Dart Coder!");
}''',
    language: dart,
  );
  final _outputNotifier = ValueNotifier<String>('');
  late final TabController _tabController;

  void _listen() => setState(() {});

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this)
      ..addListener(_listen);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.removeListener(_listen);
    super.dispose();
  }

  Future<void> _runCode() async {
    _tabController.animateTo(1);
    _unfocus();
    _outputNotifier.value = '';

    try {
      final compiler = Compiler();
      final program = compiler.compileWriteAndLoad({
        'dart_coder': {
          'main.dart': controller.fullText,
        }
      });

      await runZoned(
        () async {
          final result =
              program.executeLib('package:dart_coder/main.dart', 'main');
          if (result is Future) {
            await result;
          }
        },
        zoneSpecification: ZoneSpecification(
          print: (self, parent, zone, line) {
            _outputNotifier.value += '$line\n';
          },
        ),
      );
    } catch (e) {
      _outputNotifier.value =
          e is CompileError ? e.message : "Error: ${e.toString()}";
    }
  }

  void _unfocus() => FocusScope.of(context).unfocus();

  @override
  Widget build(BuildContext context) {
    controller.text = """
    
void main() async {
  print("Starting...");
  await Future.delayed(Duration(seconds: 2));
  print("Finished!");
}
    """;
    return Scaffold(
      floatingActionButton: _tabController.index == 0
          ? GestureDetector(
              onTap: _runCode,
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    size: 50,
                  )),
            )
          : null,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dart Coder'),
        actions: [
          GestureDetector(
            onTap: () {
              try {
                controller.text = DartFormatter().format(controller.fullText);
              } catch (_) {}
            },
            child: Container(
                margin: const EdgeInsets.only(right: 20),
                child: const Icon(Icons.brush)),
          ),
          ValueListenableBuilder(
              valueListenable: isDarkTheme,
              builder: (_, isDark, __) {
                return GestureDetector(
                    onTap: () {
                      isDarkTheme.value = !isDarkTheme.value;
                    },
                    child: Icon(isDark ? Icons.sunny : Icons.dark_mode));
              }),
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Icon(
                Icons.more_vert,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: TabBar(
                controller: _tabController,
                splashFactory: NoSplash.splashFactory,
                indicator: const BoxDecoration(),
                dividerColor: Colors.transparent,
                tabs: const [
                  Text("Code"),
                  Text("Output"),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children: [
                ValueListenableBuilder(
                    valueListenable: isDarkTheme,
                    builder: (_, isDark, __) {
                      return CodeTheme(
                        data: CodeThemeData(
                            styles: isDark ? nordTheme : atomOneLightTheme),
                        child: Container(
                          color: isDark
                              ? const Color(0xff2E3440)
                              : const Color(0xfffafafa),
                          child: CodeField(
                            expands: true,
                            gutterStyle: const GutterStyle(
                              showFoldingHandles: false,
                              width: 70,
                            ),
                            controller: controller,
                          ),
                        ),
                      );
                    }),
                ValueListenableBuilder(
                    valueListenable: _outputNotifier,
                    builder: (_, output, __) {
                      return SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Text(output),
                        ),
                      );
                    })
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
