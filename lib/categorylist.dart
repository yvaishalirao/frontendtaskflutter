import 'package:flutter/material.dart';
import 'package:frontendtaskflutter/coursecategory.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Categories",
        style:TextStyle(fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.grey),
        ),
        SizedBox(height: 10,),
        
        SizedBox(height: 35,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
            itemCount: CourseCategory.values.length,
            itemBuilder: (context,index){
              CourseCategory coursecategory=CourseCategory.values[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                border: Border.all(color: Colors.grey),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(coursecategory.title,
                  style:TextStyle(fontSize: 15,
                      color: Colors.grey),
                ),
              ),
            ),
          );
        }),)

      ],
    );
  }
}
