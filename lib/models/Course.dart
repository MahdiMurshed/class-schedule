part of event_calendar;

class Course {
  final String name;

  Course({required this.name});
}

List<Course> get course {
  courses.add(Course(name: "DSP"));
  courses.add(Course(name: "DB"));
  courses.add(Course(name: "SWE"));
  courses.add(Course(name: "OS"));

  return courses;
}
