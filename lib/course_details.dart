import 'package:flutter/material.dart';
import 'category_data_class.dart';
class CourseDetails extends StatelessWidget {
     CategoryDataClass selectedCourseData;
   CourseDetails({required this.selectedCourseData,super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [Container(padding: EdgeInsets.only( top: 12),margin: EdgeInsets.only(right: 190),child: Text('RouteAppOne',style: TextStyle(fontSize: 25),))],centerTitle: false),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/Bg.jpg',fit: BoxFit.fitHeight,height: 800,
          ),Image.asset(selectedCourseData.CourseImage),
          Container(margin: EdgeInsets.only(top: 230),child: SingleChildScrollView(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(selectedCourseData.courseContent,style: TextStyle(color: Colors.white,fontSize: 20),),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
