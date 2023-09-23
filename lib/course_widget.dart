import 'package:flutter/material.dart';
import 'package:second_assign/category_data_class.dart';
import 'package:second_assign/course_details.dart';
import 'package:second_assign/course_details.dart';
class CourseWidget extends StatelessWidget {
  CategoryDataClass courseData;
  CourseWidget({required this.courseData, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(courseData.CourseImage),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext) => CourseDetails(
                      selectedCourseData: courseData)));
            },
            child: Text(
              courseData.CourseName,
              style: TextStyle(fontSize: 18),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 40, 33, 243),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
          )
        ],
      ),
    );
  }
}
