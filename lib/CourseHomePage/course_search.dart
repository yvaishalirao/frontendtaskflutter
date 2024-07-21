import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseSearch extends StatefulWidget {
  const CourseSearch({super.key});

  @override
  State<CourseSearch> createState() => _CourseSearchState();
}

class _CourseSearchState extends State<CourseSearch> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      decoration: InputDecoration(
        hintText: "Search courses",
        hintStyle: const TextStyle(color:Colors.grey),
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Icon(Icons.search,size: 20,),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10,)
      ),
    );
  }
}
