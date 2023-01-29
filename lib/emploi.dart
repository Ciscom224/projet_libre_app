
import 'package:flutter/material.dart';
 import 'package:calendar_view/calendar_view.dart';

class Emploi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Emploi du temp"),
        backgroundColor: Color.fromARGB(255, 55, 109, 226),
      ),
      body: WeekView(
    controller: EventController(),
    eventTileBuilder: (date, events, boundry, start, end) {
        // Return your widget to display as event tile.
        return Container();
    },
    fullDayEventBuilder: (events, date) {
        // Return your widget to display full day event view.
        return Container();
    },
    showLiveTimeLineInAllDays: true, // To display live time line in all pages in week view.
    //of week view.
    minDay: DateTime(1990),
    maxDay: DateTime(2050),
    initialDay: DateTime(2021),
    heightPerMinute: 1, // height occupied by 1 minute time span.
    eventArranger: SideEventArranger(), // To define how simultaneous events will be arranged.
    onEventTap: (events, date) => print(events),
    onDateLongPress: (date) => print(date),
    startDay: WeekDays.sunday, // To change the first day of the week.
),
    );
  }
}