import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/core/colors.dart';
import 'package:savings_deposit/presentation/widgets/sd_piechart/sd_piechart.dart';

import '../../../../../domain/customer/models/customer_models.dart';

class CustomerProfilePieChart extends StatelessWidget {
  const CustomerProfilePieChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CustomerBloc, CustomerState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state.customerAccountsLoading) {
          return const Center(
            child: CircularProgressIndicator(
              color: kPrimaryColor,
            ),
          );
        }
        List<CustomerAccountsModel> customerAccountCardInfo =
            state.customerAccounts!;
        Map<String, double> dataMap = {};
        for (int i = 0; i <= customerAccountCardInfo.length - 1; i++) {
          dataMap[customerAccountCardInfo[i].accountType!] =
              customerAccountCardInfo[i].balance!;
        }
        double balance = 0;
        if (dataMap.length == 1) {
          for (var account in customerAccountCardInfo) {
            balance = balance + account.balance!;
          }
          dataMap[customerAccountCardInfo.first.accountType!] = balance;
        }
        return state.customerAccounts!.isEmpty
            ? const Center(
                child: Text(
                  "No Accounts",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            : SdPieChart(
                dataMap: dataMap,
                itemColors: const [
                  Color.fromARGB(255, 187, 51, 10),
                  Color(0XFF772D6F),
                  Color.fromARGB(255, 26, 92, 94),
                  Color.fromARGB(255, 40, 53, 112)
                ],
              );
      },
    );
  }
}
