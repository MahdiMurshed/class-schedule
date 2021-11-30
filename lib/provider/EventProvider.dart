//part of event_calendar;
import 'package:flutter/material.dart';
import 'package:scheduling_events/models/event.dart';
import 'package:scheduling_events/models/event_data_source.dart';
import 'package:scheduling_events/const/colors.dart';
import 'dart:math';

DataSource get events {
  List<String> eventNameCollection = eventNameCollections;
  List<Color> _colorCollection = colorCollection;
  final List<Meeting> meetingCollection = <Meeting>[];

  final DateTime today = DateTime.now();
  final Random random = Random();
  for (int month = -1; month < 2; month++) {
    for (int day = -5; day < 5; day++) {
      for (int hour = 9; hour < 18; hour += 5) {
        meetingCollection.add(Meeting(
          from: today
              .add(Duration(days: (month * 30) + day))
              .add(Duration(hours: hour)),
          to: today
              .add(Duration(days: (month * 30) + day))
              .add(Duration(hours: hour + 2)),
          background: _colorCollection[random.nextInt(9)],
          startTimeZone: '',
          endTimeZone: '',
          description: '',
          isAllDay: false,
          eventName: eventNameCollection[random.nextInt(7)],
        ));
      }
    }
  }

  return DataSource(meetingCollection);
}
