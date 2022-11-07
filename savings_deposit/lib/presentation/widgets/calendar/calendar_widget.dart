import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';
import 'package:savings_deposit/application/calendar/calendar_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/presentation/pages/employee/cheque_recouncilation/cheque_dialogbox_refractor.dart';
import 'package:savings_deposit/presentation/widgets/alert_show_dialogue/alert_show_dialogue.dart';

import 'package:table_calendar/table_calendar.dart';
import '../../../application/login/login_bloc.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  void initState() {
    final id = context.read<LoginBloc>().state.loginDetails!.empCode;
    context.read<CalendarBloc>().add(CalendarEvent.fetchNotes(
          employeeId: id.toString(),
          noteDate: DateTime.now().toIso8601String().split("T").first,
        ));
    super.initState();
  }

  @override
  void dispose() {
    eventController.dispose();
    super.dispose();
  }

  final eventController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size.height;
    final id = context.read<LoginBloc>().state.loginDetails!.empCode;
    final loginDetails = context.read<LoginBloc>().state.loginDetails!;

    return BlocBuilder<CalendarBloc, CalendarState>(
      builder: (context, state) {
        return Container(
          decoration: containerDecoration,
          child: Column(
            children: [
              TableCalendar(
                daysOfWeekHeight: 15.0,
                rowHeight: 40.0,
                focusedDay: DateTime.now(),
                firstDay: DateTime(2022),
                lastDay: DateTime(2070),
                selectedDayPredicate: (day) {
                  return isSameDay(state.selectedDay, day);
                },
                headerStyle: const HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                ),
                onDaySelected: (DateTime selectDay, DateTime focusDay) {
                  context.read<CalendarBloc>().add(CalendarEvent.onDaySelected(
                        selectDay: selectDay,
                        focusDay: focusDay,
                      ));
                  context.read<CalendarBloc>().add(CalendarEvent.fetchNotes(
                        employeeId: id.toString(),
                        noteDate: selectDay.toIso8601String().split("T").first,
                      ));
                },
                // eventLoader: _getEventsFromDay(state.selectedDay),
                calendarStyle: const CalendarStyle(
                  selectedDecoration: BoxDecoration(
                    color: Color(0xffC51DA8),
                    shape: BoxShape.circle,
                  ),
                  todayDecoration: BoxDecoration(
                    color: Color(0xff1F95AF),
                    shape: BoxShape.circle,
                  ),
                ),
              ),

              // ..._getEventsFromDay(selectedDay).map(
              //   (Event event) => ListTile(
              //     title: Text(event.title),
              //     trailing: IconButton(
              //       icon: const Icon(Icons.delete),
              //       onPressed: () {
              //         selectedEvents![selectedDay]!.removeWhere((element) {
              //           event.title;
              //           return true;
              //         });
              //       },
              //     ),
              //   ),
              // ),
              kHeight20,
              MaterialButton(
                shape: const StadiumBorder(),
                color: const Color(0xff914686),
                onPressed: () => showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text(
                      "Add Event",
                      style: TextStyle(),
                    ),
                    content: TextFormField(
                      inputFormatters: [LengthLimitingTextInputFormatter(60)],
                      controller: eventController,
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          eventController.clear();
                          Navigator.pop(context);
                        },
                        child: const Text("Cancel"),
                      ),
                      TextButton(
                        onPressed: () {
                          //Add note
                          context
                              .read<CalendarBloc>()
                              .add(CalendarEvent.addNote(
                                firmId: loginDetails.firmId.toString(),
                                branchId: loginDetails.branchId.toString(),
                                employeeId: id.toString(),
                                noteDate: state.selectedDay
                                    .toIso8601String()
                                    .split("T")
                                    .first,
                                description: eventController.text,
                              ));
                          Navigator.of(context).pop();
                          eventController.clear();
                          //Fetch
                          Future.delayed(const Duration(seconds: 1), () {
                            context
                                .read<CalendarBloc>()
                                .add(CalendarEvent.fetchNotes(
                                  employeeId: id.toString(),
                                  noteDate: state.selectedDay
                                      .toIso8601String()
                                      .split("T")
                                      .first,
                                ));
                          });

                          return;
                          // if (eventController.text.isEmpty) {
                          // } else {
                          //   // if (selectedEvents![selectedDay] != null) {
                          //   //   selectedEvents![selectedDay]!
                          //   //       .add(Event(title: eventController.text));
                          //   // } else {
                          //   //   selectedEvents![selectedDay] = [
                          //   //     Event(title: eventController.text)
                          //   //   ];
                          //   // }
                          // }
                          // Navigator.pop(context);
                          // eventController.clear();
                          // setState(() {});
                          // return;
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          child: Text("Ok"),
                        ),
                      )
                    ],
                  ),
                ),
                child: const Text(
                  "Add Event",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              kHeight10,
              state.calendarModels.isEmpty
                  ? const Text("No Events")
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.calendarModels.length,
                      itemBuilder: (context, index) {
                        final data = state.calendarModels[index];
                        return ListTile(
                          onTap: () {
                            sdShowDailogue(
                                context: context,
                                dailogue: AlertDialog(
                                  title: Text((DateFormat("dd-MMMM-yyyy")
                                      .format(DateTime.parse(
                                          data.notedate.toString())))),
                                  content: Neumorphic(
                                      padding: EdgeInsets.all(20),
                                      child: Wrap(
                                        children: [
                                          Text("Note : "),
                                          Text(
                                            data.notedescription,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      )),
                                ));
                          },
                          title: Text(
                            data.notedescription,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          tileColor: Colors.transparent,
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              context.read<CalendarBloc>().add(
                                    CalendarEvent.deleteNote(
                                      employeeId: id.toString(),
                                      noteDate: data.notedate
                                          .toIso8601String()
                                          .split("T")
                                          .first,
                                      description: data.notedescription,
                                      noteId: data.noteid.toString(),
                                    ),
                                  );
                              Future.delayed(const Duration(seconds: 1), () {
                                context
                                    .read<CalendarBloc>()
                                    .add(CalendarEvent.fetchNotes(
                                      employeeId: id.toString(),
                                      noteDate: state.selectedDay
                                          .toIso8601String()
                                          .split("T")
                                          .first,
                                    ));
                              });

                              // selectedEvents![selectedDay]!
                              //     .removeWhere((element) {
                              //   event.title;
                              //   return true;
                              // });
                            },
                          ),
                        );
                      },
                    ),
            ],
          ),
        );
      },
    );
    // return size >= 765
    //     ? Container(
    //         decoration: containerDecoration,
    //         child: Column(
    //           children: [
    //             TableCalendar(
    //               daysOfWeekHeight: 15.0,
    //               rowHeight: 40.0,
    //               focusedDay: DateTime.now(),
    //               firstDay: DateTime(2022),
    //               lastDay: DateTime(2030),
    //               selectedDayPredicate: (day) {
    //                 return isSameDay(selectedDay, day);
    //               },
    //               headerStyle: const HeaderStyle(
    //                 formatButtonVisible: false,
    //                 titleCentered: true,
    //               ),
    //               onDaySelected: (DateTime selectDay, DateTime focusDay) {
    //                 setState(() {
    //                   selectedDay = selectDay;
    //                   focusedDay = focusDay;
    //                 });
    //                 // ignore: avoid_print
    //                 print(focusDay);
    //               },
    //               eventLoader: _getEventsFromDay,
    //               calendarStyle: const CalendarStyle(
    //                 selectedDecoration: BoxDecoration(
    //                   color: Color(0xffC51DA8),
    //                   shape: BoxShape.circle,
    //                 ),
    //                 todayDecoration: BoxDecoration(
    //                   color: Color(0xff1F95AF),
    //                   shape: BoxShape.circle,
    //                 ),
    //               ),
    //             ),
    //             ..._getEventsFromDay(selectedDay).map(
    //               (Event event) => ListTile(
    //                 title: Text(event.title),
    //                 trailing: IconButton(
    //                   icon: const Icon(Icons.delete),
    //                   onPressed: () {
    //                     selectedEvents![selectedDay]!.removeWhere((element) {
    //                       event.title;
    //                       return true;
    //                     });
    //                   },
    //                 ),
    //               ),
    //             ),
    //             MaterialButton(
    //               color: const Color(0xff914686),
    //               onPressed: () => showDialog(
    //                 context: context,
    //                 builder: (context) => AlertDialog(
    //                   title: const Text("Add Event"),
    //                   content: TextFormField(
    //                     controller: eventController,
    //                   ),
    //                   actions: [
    //                     TextButton(
    //                       onPressed: () {
    //                         Navigator.pop(context);
    //                       },
    //                       child: const Text("Cancel"),
    //                     ),
    //                     TextButton(
    //                       onPressed: () {
    //                         if (eventController.text.isEmpty) {
    //                         } else {
    //                           if (selectedEvents![selectedDay] != null) {
    //                             selectedEvents![selectedDay]!
    //                                 .add(Event(title: eventController.text));
    //                           } else {
    //                             selectedEvents![selectedDay] = [
    //                               Event(title: eventController.text)
    //                             ];
    //                           }
    //                         }
    //                         Navigator.pop(context);
    //                         eventController.clear();
    //                         setState(() {});
    //                         return;
    //                       },
    //                       child: const Text("Ok"),
    //                     )
    //                   ],
    //                 ),
    //               ),
    //               child: const Text("Add Event"),
    //             )
    //           ],
    //         ),
    //       )
    //     : Container(
    //         decoration: containerDecoration,
    //         child: Column(
    //           children: [
    //             TableCalendar(
    //               eventLoader: _getEventsFromDay,
    //               daysOfWeekHeight: 15.0,
    //               rowHeight: 40.0,
    //               focusedDay: DateTime.now(),
    //               firstDay: DateTime(2022),
    //               lastDay: DateTime(2030),
    //               selectedDayPredicate: (day) {
    //                 return isSameDay(selectedDay, day);
    //               },
    //               headerStyle: const HeaderStyle(
    //                   formatButtonVisible: false, titleCentered: true),
    //               onDaySelected: (DateTime selectDay, DateTime focusDay) {
    //                 setState(() {
    //                   selectedDay = selectDay;
    //                   focusedDay = focusDay;
    //                 });
    //                 // ignore: avoid_print
    //                 print(focusDay);
    //               },
    //               calendarStyle: const CalendarStyle(
    //                 selectedDecoration: BoxDecoration(
    //                   color: Color(0xffC51DA8),
    //                   shape: BoxShape.circle,
    //                 ),
    //                 todayDecoration: BoxDecoration(
    //                   color: Color(0xff1F95AF),
    //                   shape: BoxShape.circle,
    //                 ),
    //               ),
    //             ),
    //             ..._getEventsFromDay(selectedDay).map((Event event) => ListTile(
    //                   title: Text(event.title),
    //                 )),
    //             MaterialButton(
    //                 color: const Color(0xff914686),
    //                 onPressed: () => showDialog(
    //                       context: context,
    //                       builder: (context) => AlertDialog(
    //                         title: const Text(
    //                           "Add Event",
    //                           style: TextStyle(color: Colors.pink),
    //                         ),
    //                         content: TextFormField(
    //                           controller: eventController,
    //                         ),
    //                         actions: [
    //                           TextButton(
    //                             onPressed: () {
    //                               Navigator.pop(context);
    //                             },
    //                             child: const Text("Cancel"),
    //                           ),
    //                           TextButton(
    //                             onPressed: () {
    //                               if (eventController.text.isEmpty) {
    //                               } else {
    //                                 if (selectedEvents![selectedDay] != null) {
    //                                   selectedEvents![selectedDay]!.add(
    //                                       Event(title: eventController.text));
    //                                 } else {
    // //                                   selectedEvents![selectedDay] = [
    // //                                     Event(title: eventController.text)
    // //                                   ];
    // //                                 }
    // //                               }
    // //                               Navigator.pop(context);
    // //                               eventController.clear();
    // //                               setState(() {});
    // //                               return;
    // //                             },
    // //                             child: const Text("Ok"),
    // //                           )
    // //                         ],
    // //                       ),
    // //                     ),
    // //           child: const Text(
    // //             "Add Event",
    //   //             style: TextStyle(color: Colors.white),
    //   //           ))
    //   //     ],
    //   //   ),
    //   // );
  }

  BoxDecoration containerDecoration = const BoxDecoration(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(16),
      topRight: Radius.circular(16),
      bottomLeft: Radius.circular(16),
      bottomRight: Radius.circular(16),
    ),
    boxShadow: [
      BoxShadow(
        color: Color(0xffffffff),
        offset: Offset(-3, -3),
        blurRadius: 10,
      ),
      BoxShadow(
        color: Color.fromARGB(26, 150, 150, 150),
        offset: Offset(5, 5),
        blurRadius: 12,
      ),
      BoxShadow(
        color: Color.fromARGB(57, 255, 255, 255),
        offset: Offset(-5, -5),
        blurRadius: 10,
      ),
      BoxShadow(
        color: Color.fromARGB(50, 183, 183, 183),
        offset: Offset(5, 5),
        blurRadius: 22,
      ),
    ],
    color: Color.fromRGBO(233, 237, 240, 1),
  );
}
