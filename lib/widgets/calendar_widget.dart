import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarWidget extends StatelessWidget {
  CalendarView calendarView;
  CalendarDataSource calendarDataSource;
  CalendarTapCallback calendarTapCallback;
  CalendarWidget(
      {required this.calendarView,
      required this.calendarDataSource,
      required this.calendarTapCallback});

  @override
  Widget build(BuildContext context) {
    return SfCalendar(
        view: calendarView,
        allowedViews: [
          CalendarView.day,
          CalendarView.week,
          CalendarView.workWeek,
          CalendarView.month,
          CalendarView.timelineDay,
          CalendarView.timelineWeek,
          CalendarView.timelineWorkWeek
        ],
        headerHeight: 40,
        headerStyle: CalendarHeaderStyle(textAlign: TextAlign.center),
        cellBorderColor: Colors.transparent,
        dataSource: calendarDataSource,
        onTap: calendarTapCallback,
        initialDisplayDate: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day, 0, 0, 0),
        monthViewSettings: MonthViewSettings(
            appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
        timeSlotViewSettings: TimeSlotViewSettings(
          minimumAppointmentDuration: const Duration(minutes: 60),
          startHour: 7,
          endHour: 18,
        ));
  }
}
