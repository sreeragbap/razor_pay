// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/core/colors.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/generated/l10n.dart';
import 'package:savings_deposit/presentation/widgets/alert_show_dialogue/alert_show_dialogue.dart';
import 'package:savings_deposit/presentation/widgets/dailogue_content/dailogue_content.dart';
import 'package:savings_deposit/presentation/widgets/notification_list_widget/notifications_listing_widget.dart';

import '../../../../../domain/customer/models/customer_models.dart';

// ignore: must_be_immutable
class CustomerProfileNotification extends StatelessWidget {
  CustomerProfileNotification({Key? key}) : super(key: key);
  ScrollController? notificatioScrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final delegate = S.of(context);
    return BlocConsumer<CustomerBloc, CustomerState>(
      listener: (context, state) {
        final _customerId =
            context.read<LoginBloc>().state.loginDetails!.userType == "Employee"
                ? context.read<CustomerBloc>().state.searchResultCustomerID
                : context.read<LoginBloc>().state.loginDetails!.customerId;
        state.customerNotificationSuccessOrfailOption.fold(
            () => {},
            (a) => {
                  a.fold(
                      (l) => {},
                      (r) => {
                            context.read<CustomerBloc>().add(
                                CustomerEvent.fetchCustomerNotifications(
                                    customerId: _customerId!)),
                          })
                });
      },
      builder: (context, state) {
        if (state.customerNotificationLoading) {
          return const Center(
            child: CircularProgressIndicator(
              color: kPrimaryColor,
            ),
          );
        }
        List<CustomerNotificationModel> customerNotificatiosDatas =
            state.customerNotification!;
        return state.customerNotification!.isEmpty
            ? const Center(
                child: Text(
                  "No Notifications",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            : NotificationListingWidget(
                itemCount: customerNotificatiosDatas.length,
                itemBuilder: (context, index) {
                  var notification = customerNotificatiosDatas[index];
                  return ListTile(
                    dense: true,
                    onTap: () {
                      sdShowDailogue(
                        context: context,
                        dailogue: DailogueContent(
                          title: notification.subject!,
                          content: SizedBox(
                            height: 120,
                            child: Neumorphic(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Text(notification.userId ?? "No Customer Id"),
                                  kHeight10,
                                  Text(notification.description!),
                                  kHeight10,
                                  Text(DateFormat("dd-MMMM-yyyy").format(
                                      DateTime.parse(notification.date!)))
                                ],
                              ),
                            ),
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  context.read<CustomerBloc>().add(
                                      CustomerEvent.removeCustomerNotification(
                                          userId: notification.userId!,
                                          alertId: notification.alertId!));
                                  Future.delayed(kDuration2, () {
                                    context.read<CustomerBloc>().add(
                                        CustomerEvent
                                            .fetchCustomerNotifications(
                                                customerId:
                                                    notification.userId!));
                                  });

                                  Navigator.pop(context);
                                },
                                child: context
                                            .read<LoginBloc>()
                                            .state
                                            .loginDetails!
                                            .userType ==
                                        "Customer"
                                    ? Text(delegate.notificationPopupMarkAsRead)
                                    : TextButton(
                                        child: const Text("Cancel"),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ))
                          ],
                        ),
                      );
                    },
                    leading: CircleAvatar(
                      radius: 13,
                      backgroundColor: Colors.white,
                      child: Image.network(
                        notification.image!,
                        width: 50,
                        errorBuilder:
                            (BuildContext ctx, Object obj, StackTrace? a) {
                          return Image.asset(
                            "assets/icons/notification.png",
                            height: 100,
                            width: 100,
                          );
                        },
                      ),
                    ),
                    title: Text(
                      notification.subject!,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      notification.type!,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: Text(DateFormat("dd-MMMM-yyyy")
                        .format(DateTime.parse(notification.date!))),
                  );
                },
              );
      },
    );
  }
}
