library event_calendar;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:scheduling_events/widgets/calendar_widget.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'models/event.dart';
import 'models/event_data_source.dart';
import 'const/colors.dart';
import 'provider/EventProvider.dart';
//part of event_calendar;

part 'screens/event_calendar_screen.dart';
part 'color-picker.dart';

part 'screens/appointment-editor.dart';
part 'models/Course.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Calender';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.black,
          accentColor: Colors.greenAccent[700],
          primaryColor: Colors.greenAccent[700]
          //appBarTheme: AppBarTheme(backgroundColor: Colors.greenAccent[700])
          ),
      home: EventCalendar(),
      // routes: {
      //   EventEditingPage.routeName:(context)=>EventEditingPage(),

      // },
    );
  }
}

List<Color> _colorCollection = colorCollection;
List<String> _colorNames = colorNames;
int _selectedColorIndex = 0;
late DataSource _events;
Meeting? _selectedAppointment;
late DateTime _startDate;
late TimeOfDay _startTime;
late DateTime _endDate;
late TimeOfDay _endTime;
bool _isAllDay = false;
String _subject = '';
String _notes = '';
List<Course> courses = [];
