import 'package:flutter/material.dart';
import 'package:second_assign/course_widget.dart';
import 'package:second_assign/category_data_class.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [Container(padding: EdgeInsets.only( top: 12),margin: EdgeInsets.only(right: 190),child: Text('RouteAppOne',style: TextStyle(fontSize: 25),))],centerTitle: false),
        body: ListView.builder(
          itemBuilder: buildCourseWidget,
          itemCount: 3,
        ));
  }
}

CourseWidget buildCourseWidget(BuildContext context, int index) {
  return CourseWidget(
    courseData: courses[index],
  );
}


