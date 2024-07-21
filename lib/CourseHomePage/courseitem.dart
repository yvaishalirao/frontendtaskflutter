import 'package:flutter/material.dart';
import 'package:frontendtaskflutter/course_sorting/coursearguments.dart';
import 'package:frontendtaskflutter/route.dart';

import '../course_sorting/course.dart';

class CourseItem extends StatefulWidget {
  final Course course;
  const CourseItem({super.key,required this.course});

  @override
  State<CourseItem> createState() => _CourseItemState();
}

class _CourseItemState extends State<CourseItem> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width:250,
      child: Padding(
        padding:  EdgeInsets.all(1),
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          child: InkWell(
            onTap:(){
              Navigator.pushNamed(context, RouteNames.courseDetails,
              arguments: CourseArgument(widget.course)
              );

            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(widget.course.thumbnailUrl,
                  // height: 110,
                  // width: double.infinity,
                  // fit: BoxFit.cover,
              ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.course.title,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),),
                      const SizedBox(height: 15,),
                      Row(
                        children: [const Icon(Icons.person,
                        color: Colors.blue,),
                          const SizedBox(width: 5,),
                          Text(widget.course.createdBy,
                          style:const TextStyle(fontSize:12,
                          color: Colors.black),),
                        ],
                      ),
                      const SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star,
                                color: Colors.yellow,
                                size: 25,),
                              Text('${widget.course.rate}',
                              style: const TextStyle(fontSize: 15),),
                            ],
                          ),
                          Text('\$${widget.course.price}',
                            style: const TextStyle(fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),),

                        ],
                      ),


                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

