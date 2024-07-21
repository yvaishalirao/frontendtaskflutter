import 'package:flutter/material.dart';
import 'package:frontendtaskflutter/course_sorting/coursecategory.dart';

class CategoryChange extends ChangeNotifier{
  CourseCategory _category=CourseCategory.all;
  CourseCategory get category => _category;

  void changeCategory(CourseCategory category){
    _category=category;
    notifyListeners();
  }
}