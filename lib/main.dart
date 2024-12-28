// In pubspec.yaml, add:
// dependencies:
//   dart_eval: ^0.7.2

import 'package:flutter/material.dart';
import 'package:dart_eval/dart_eval.dart';

class DartCompilerApp extends StatefulWidget {
  const DartCompilerApp({super.key});

  @override
  State<DartCompilerApp> createState() => _DartCompilerAppState();
}

class _DartCompilerAppState extends State<DartCompilerApp> {
  final TextEditingController _codeController = TextEditingController();
  String _output = '';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dart Code Runner'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: TextField(
                controller: _codeController,
                maxLines: null,
                decoration: const InputDecoration(
                  hintText: 'Enter your Dart code here...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _runCode,
              child: const Text('Run Code'),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: SingleChildScrollView(
                  child: Text(_output),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _runCode() {
    try {
      final compiler = Compiler();

      // Wrap user code in a main function if it's not already wrapped
      final userCode = _codeController.text;


      // // Compile and run the code
      // final program = compiler.compile(fullCode);
      //
      // final runtime = Runtime.ofProgram(program);
      //
      // // Capture print statements
      // runtime.setUp((msg) {
      //   setState(() {
      //     _output += '$msg\n';
      //   });
      // });
      //
      // runtime.executeLib('package:example/main.dart', 'main');

      final program = r'''
      class Cat {
        Cat(this.name);
        final String name;
        String speak() => "I'm $name!";
      }
      String main() {
        final cat = Cat('Fluffy')
        return cat.speak();
      }
  ''';
      final val =   eval(program, function: 'main');

      print(val);


    } catch (e) {
      setState(() {
        _output = 'Error: ${e.toString()}';
      });
    }
  }
}

// Main app
void main() {
  runApp(const MaterialApp(
    home: DartCompilerApp(),
  ));
}