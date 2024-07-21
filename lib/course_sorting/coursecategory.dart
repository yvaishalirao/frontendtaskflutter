enum CourseCategory { all, programming, finance, marketing, other }

extension CourseCategoryExtension on CourseCategory {
  String get title {

    switch (this) {
      case CourseCategory.all:
        return "All";
      case CourseCategory.programming:
        return "Programming";
      case CourseCategory.finance:
        return "Finance";
      case CourseCategory.marketing:
        return "Marketing";
      case CourseCategory.other:
        return "Other";
    }
  }
}
