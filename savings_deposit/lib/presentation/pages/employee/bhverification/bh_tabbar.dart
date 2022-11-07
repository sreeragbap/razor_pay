import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savings_deposit/application/employee/employee_bloc.dart';
import 'package:savings_deposit/presentation/pages/employee/bhverification/bh_delete_scheduled_transcation.dart';
import 'package:savings_deposit/presentation/pages/employee/bhverification/bhstate_decision.dart';
import 'package:savings_deposit/presentation/responsive/responsive.dart';

class BhTabbar extends StatelessWidget {
  const BhTabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      // color: Colors.red,
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: AppBar(
                  // backgroundColor: kbackgroundColor,
                  bottom: TabBar(
                onTap: (index) {
                  index == 0
                      ? context
                          .read<EmployeeBloc>()
                          .add(const EmployeeEvent.bhverificationinitialEvent())
                      : context.read<EmployeeBloc>().add(const EmployeeEvent
                          .getbhdeletedscheduledtranscationdetails());
                },
                tabs: const [
                  Tab(
                    // text: "BH Cheques",
                    child: Text(
                      "BH Cheques",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                      child: Text(
                    "Delete Scheduled Transactions",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ))
                ],
              )),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  Responsive(
                    desktop: BhStateDecision(),
                    mobile: Text('Nothing To Display'),
                    tablet: BhStateDecision(),
                  ),
                  // Responsive(
                  //   desktop: DeleteScheduledTranscationPage(),
                  //   mobile: const Text('Nothing to Display'),
                  //   tablet: DeleteScheduledTranscationPage(),
                  // ),
                  Responsive(
                    desktop: DeleteScheduledTranscationPage(),
                    mobile: Text('Nothing To Display'),
                    tablet: DeleteScheduledTranscationPage(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
