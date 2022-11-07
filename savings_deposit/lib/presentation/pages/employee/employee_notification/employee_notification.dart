import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'package:savings_deposit/application/employee/employee_bloc.dart';

import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/presentation/widgets/notification_list_widget/notifications_listing_widget.dart';

import '../../../../application/language/language_bloc.dart';
import '../../../widgets/alert_show_dialogue/alert_show_dialogue.dart';
import '../../../widgets/dailogue_content/dailogue_content.dart';

class EmployeeNotificationWidget extends StatelessWidget {
  const EmployeeNotificationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EmployeeBloc, EmployeeState>(
        listener: (context, state) {
      state.removeEmployeeNotificationFailureOrSuccess.fold(() {}, (a) {
        a.fold((l) {}, (r) {
          // context.read<EmployeeBloc>().add(EmployeeEvent.removeEmployeeNotification(userId:context.read<LoginBloc>().state.loginDetails!.customerId! , alertId: ));
        });
      });
    }, builder: (context, state) {
      return SizedBox(
        // height: 80,
        child: NotificationListingWidget(
            itemBuilder: (BuildContext context, int index) {
              final ismalayalam =
                  context.read<LanguageBloc>().state.isMalayalam;
              final notification = state.employeenotification![index];
              return ListTile(
                onTap: () {
                  sdShowDailogue(
                      context: context,
                      dailogue: DailogueContent(
                        title: notification.subject!,
                        content: SizedBox(
                          height: 120,
                          child: Column(
                            children: [
                              Text(notification.type!),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(DateFormat("dd-MMMM-yyyy")
                                  .format(DateTime.parse(notification.date!))),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(notification.description!),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Cancel")),
                          TextButton(
                              onPressed: () {
                                context.read<EmployeeBloc>().add(
                                    EmployeeEvent.removeEmployeeNotification(
                                        userId: notification.userId!,
                                        alertId: notification.alertId!));
                                Future.delayed(kDuration2, () {
                                  context.read<EmployeeBloc>().add(
                                      EmployeeEvent.getEmployeeNotifications(
                                          employeeid: notification.userId!));
                                });

                                Navigator.pop(context);
                              },
                              child: const Text("Mark as read"))
                        ],
                      ));
                },
                leading:
                    CircleAvatar(child: Image.network(notification.image!)),
                subtitle: Text(DateFormat("dd-MMMM-yyyy")
                    .format(DateTime.parse(notification.date!))),
                title: AutoSizeText(
                  notification.subject!.toString(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              );
            },
            itemCount: state.employeenotification!.length),
      );
    });
  }
}
