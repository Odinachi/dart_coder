import 'package:flutter/material.dart';

import '../main.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Container(
        width: MediaQuery.of(context).size.width * .8,
        decoration:
            BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.close, color: Theme.of(context).iconTheme.color),
                ],
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        actions: [
          ValueListenableBuilder(
              valueListenable: isDarkTheme,
              builder: (_, isDark, __) {
                return GestureDetector(
                  onTap: () {
                    isDarkTheme.value = !isDarkTheme.value;
                  },
                  child: Icon(
                    isDark ? Icons.sunny : Icons.dark_mode,
                    // color: isDark ? AppColors.white : AppColors.black,
                  ),
                );
              }),
          SizedBox(
            width: 20,
          ),
          Builder(builder: (context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context).openEndDrawer();
              },
              child: Icon(Icons.menu),
            );
          }),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: const Placeholder(),
    );
  }
}
