
import 'package:flutter/material.dart';
import 'package:frontendtaskflutter/course_sorting/course.dart';
import 'package:frontendtaskflutter/course_sorting/coursecategory.dart';
import 'package:readmore/readmore.dart';

import 'course_sorting/section.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({super.key, required this.course});
  final Course course;

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(
                    //   padding: EdgeInsets.all(4.0),
                    //   child: Icon(Icons.arrow_back,
                    //     color: Colors.black,),
                    // ),
                    Padding(
                      padding:  const EdgeInsets.all(4.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Icon(Icons.share,
                            color: Colors.black,),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Icon(Icons.shopping_cart,
                            color: Colors.black,),
                        )
                      ],
                    )
          
                  ],
                ),
              ),
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: AspectRatio(
                  aspectRatio: 16 / 9, // Adjust the aspect ratio as needed
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        child: Image.asset(
                          widget.course.thumbnailUrl,
                          fit: BoxFit.contain,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                      const Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.play_arrow,
                            size: 70,
                            color: Colors.white,
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
          
              const SizedBox(height: 20,),
              Container(decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.course.title,
                        style: const TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.person,
                                color: Colors.blue,),
                              const SizedBox(width: 10,),
                              Text(widget.course.createdBy,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.play_circle_fill_outlined),
                              const SizedBox(width: 10),
                              Text('${widget.course.lessonNo} Lessons',
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                ),)
                            ],
                          ),
                          const SizedBox(width: 20,),
                          Row(
                            children: [
                              const Icon(Icons.access_time),
                              const SizedBox(width: 10),
                              Text(widget.course.duration,
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                ),)
                            ],
                          ),
                          const SizedBox(width: 20,),
                          Row(
                            children: [
                              const Icon(Icons.star,
                                color: Colors.yellow,
                                size: 25,),
                              const SizedBox(width: 10),
                              Text('${widget.course.rate}',
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                ),)
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      ReadMoreText(widget.course.description,
                        trimLines: 2,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: "Show more",
                        trimExpandedText: "Show less",
                        moreStyle: const TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                        lessStyle: const TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                        style: const TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Confirmation'),
                                  content: Text('Enrolled',
                                  style: TextStyle(fontSize: 20),),
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text('OK'),
                                      onPressed: () {
                                        Navigator.of(context).pop(); // Close the dialog
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 10,
                            ),
                            child: Text(
                              "Enroll Now",
                              style: TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Course Content",
                            style: TextStyle(fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: 20,
                            ),),
          
                          Text("(${widget.course.sections.length} Sections)",
                            style: const TextStyle(fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 16,
                            ),),
                        ],
                      ),
          
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: widget.course.sections.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return buildCourseContent(index);
                        },)
          
                    ],
                  ),),
              )
          
            ],
          ),
        ),
      ),
    );
  }
    Widget buildCourseContent(int index){
      Section section =widget.course.sections[index];
      return ExpansionTile(
          title: Text("Section${index+1}-${section.name}",
            style: const TextStyle(fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        children: section.lectures.map((lecture){
          return ListTile(
            dense:true,
            onTap: (){},
            leading:const SizedBox(),
            title:Text(lecture.name),
            subtitle: Row(
              children: [
                const Icon(Icons.access_time,
                  size: 15,),
                const SizedBox(width: 10,),
                Text(lecture.duration,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),)
              ],
            ),
          );
        }).toList(),
      );
    }

}
