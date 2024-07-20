import 'package:flutter/material.dart';

import 'course_sorting/course.dart';

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
      height: 450,
      width:250,
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          child: InkWell(
            onTap:(){

            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(widget.course.thumbnailUrl,
                  height: 120, // adjust as needed
                  width: double.infinity,
                  fit: BoxFit.cover,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.course.title,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),),
                      SizedBox(height: 15,),
                      Row(
                        children: [Icon(Icons.person,
                        color: Colors.blue,),
                          SizedBox(width: 5,),
                          Text(widget.course.createdBy,
                          style:TextStyle(fontSize:12,
                          color: Colors.black),),
                        ],
                      ),
                      SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('${widget.course.rate}',
                          style: TextStyle(fontSize: 15),),
                          Text('\$${widget.course.price}',
                            style: TextStyle(fontSize: 15,
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

