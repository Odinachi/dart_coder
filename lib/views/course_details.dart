import 'package:dartcoder/helpers/navigation/router.dart';
import 'package:dartcoder/models/course_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:markdown_widget/markdown_widget.dart';

import '../main.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({super.key});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  final tocController = TocController();
  final courses = {
    "Basics": [
      CourseModel(title: "Introduction", path: "assets/courses/main.md", id: 0),
      CourseModel(
        title: "Variables and Data Types",
        path: "assets/courses/variables.md",
        id: 1,
      ),
      CourseModel(
        title: "Operators",
        path: "assets/courses/operators.md",
        id: 2,
      ),
      CourseModel(
        title: "Comments",
        path: "assets/courses/comments.md",
        id: 3,
      ),
      CourseModel(
        title: "Input/Output",
        path: "assets/courses/input_output.md",
        id: 4,
      ),
      CourseModel(
        title: "Control Flow",
        path: "assets/courses/control_flow.md",
        id: 5,
      ),
      CourseModel(
        title: "Switch case",
        path: "assets/courses/switch_case.md",
        id: 6,
      ),
      CourseModel(
        title: "For Loops",
        path: "assets/courses/for_loops.md",
        id: 7,
      ),
      CourseModel(
        title: "While Loops",
        path: "assets/courses/while_loop.md",
        id: 8,
      ),
      CourseModel(
        title: "Do-While Loops",
        path: "assets/courses/do_while.md",
        id: 9,
      ),
      CourseModel(
        title: "List",
        path: "assets/courses/list.md",
        id: 10,
      ),
      CourseModel(
        title: "Sets",
        path: "assets/courses/sets.md",
        id: 11,
      ),
      CourseModel(
        title: "Maps",
        path: "assets/courses/map.md",
        id: 12,
      ),
      CourseModel(
        title: "Functions",
        path: "assets/courses/functions.md",
        id: 12,
      ),
    ],
  };

  final courseNotifier = ValueNotifier(
    CourseModel(
      title: "Main",
      path: "assets/courses/main.md",
      id: 0,
    ),
  );

  void loadData(String path) async {
    await rootBundle.loadString(path).then((e) {
      dataStr = e;
      setState(() {});
    });
  }

  String dataStr = "";

  @override
  void initState() {
    super.initState();
    loadData(courseNotifier.value.path ?? "");
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: courseNotifier,
        builder: (_, value, __) {
          return Scaffold(
            endDrawer: Container(
              width: MediaQuery.of(context).size.width * .8,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor),
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            AppRouter.pop();
                          },
                          icon: const Icon(Icons.close),
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                            child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (_, i) {
                        final listOfCourses = courses.keys.toList()..sort();

                        final category = listOfCourses.toList()[i];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              category,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            ListView.separated(
                              separatorBuilder: (_, __) => Divider(
                                color: Theme.of(context).dividerColor,
                              ),
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (_, j) {
                                final courseData =
                                    courses[listOfCourses[i]]?[j];

                                final courseName = courseData?.title;
                                return InkWell(
                                  onTap: () {
                                    AppRouter.pop();

                                    if (courseData != null) {
                                      courseNotifier.value = courseData;
                                      loadData(courseData.path ?? "");
                                      tocController.jumpToIndex(0);
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5.0),
                                    child: Text(
                                      courseName ?? '',
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                  ),
                                );
                              },
                              itemCount: courses[listOfCourses[i]]?.length ?? 0,
                            )
                          ],
                        );
                      },
                      separatorBuilder: (_, __) => const SizedBox(
                        height: 10,
                      ),
                      itemCount: courses.keys.length,
                    )))
                  ],
                ),
              ),
            ),
            appBar: AppBar(
              centerTitle: true,
              title: Text(value.title ?? ""),
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
                const SizedBox(
                  width: 20,
                ),
                Builder(builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    child: const Icon(Icons.menu),
                  );
                }),
                const SizedBox(
                  width: 20,
                )
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Expanded(
                    child: MarkdownWidget(
                      data: dataStr,
                      tocController: tocController,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
