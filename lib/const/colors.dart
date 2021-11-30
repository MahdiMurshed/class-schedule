//part of event_calendar;
import 'package:flutter/cupertino.dart';
// import 'package:scheduling_events/screens/event_calendar_screen.dart';

// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_calendar/calendar.dart';
List<String> get colorNames {
  List<String> _c = [];
  _c.add('Green');
  _c.add('Purple');
  _c.add('Red');
  _c.add('Orange');
  _c.add('Caramel');
  _c.add('Magenta');
  _c.add('Blue');
  _c.add('Peach');
  _c.add('Gray');
  return _c;
}

List<Color> get colorCollection {
  List<Color> _colorCollection = <Color>[];
  _colorCollection.add(const Color(0xFF0F8644));
  _colorCollection.add(const Color(0xFF8B1FA9));
  _colorCollection.add(const Color(0xFFD20100));
  _colorCollection.add(const Color(0xFFFC571D));
  _colorCollection.add(const Color(0xFF85461E));
  _colorCollection.add(const Color(0xFFFF00FF));
  _colorCollection.add(const Color(0xFF3D4FB5));
  _colorCollection.add(const Color(0xFFE47C73));
  _colorCollection.add(const Color(0xFF636363));
  return _colorCollection;
}

List<String> get eventNameCollections {
  List<String> eventNameCollection = <String>[];
  eventNameCollection.add('General Meeting');
  eventNameCollection.add('Plan Execution');
  eventNameCollection.add('Project Plan');
  eventNameCollection.add('Consulting');
  eventNameCollection.add('Support');
  eventNameCollection.add('Development Meeting');
  eventNameCollection.add('Scrum');
  eventNameCollection.add('Project Completion');
  eventNameCollection.add('Release updates');
  eventNameCollection.add('Performance Check');
  return eventNameCollection;
}
