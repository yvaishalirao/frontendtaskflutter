import 'package:flutter/material.dart';
import 'package:frontendtaskflutter/course_sorting/categorychange.dart';
import 'package:frontendtaskflutter/course_sorting/coursecategory.dart';
import 'package:provider/provider.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    var category=Provider.of<CategoryChange>(context).category;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Categories",
        style:TextStyle(fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black87),
        ),
        const SizedBox(height: 10,),

        SizedBox(height: 35,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
            itemCount: CourseCategory.values.length,
            itemBuilder: (context,index){
              CourseCategory coursecategory=CourseCategory.values[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: (){
                Provider.of<CategoryChange>(context,
                listen: false).changeCategory(coursecategory);
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: category== coursecategory?
                  Colors.blue: Colors.white,
                  border: Border.all(color: Colors.black),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(coursecategory.title,
                    style:TextStyle(fontSize: 15,
                        color:category== coursecategory?
                        Colors.white: Colors.black),
                  ),
                ),
              ),
            ),
          );
        }),)

      ],
    );
  }
}
