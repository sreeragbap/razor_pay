import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/presentation/pages/customer/widgets/customer_account_statement/widgets/statement_account_details.dart';
import 'package:savings_deposit/presentation/pages/customer/widgets/customer_account_statement/widgets/statement_data_table.dart';
import 'package:savings_deposit/presentation/responsive/responsive.dart';

// ignore: must_be_immutable
class CustomerAccountStatement extends StatelessWidget {
  CustomerAccountStatement({Key? key}) : super(key: key);

  String statementperiod = "10th March to 20th April ";
  late DateTime selectedDate;

  // @override
  // void initState() {
  //   selectedDate = DateTime.now();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    var widthSize = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StatementAccountDetails(),
          kHeight10,
          StatementDataTable(),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class DataTableHeadCell extends StatelessWidget {
  String value;
  double cellWidth;
  DataTableHeadCell({Key? key, required this.value, required this.cellWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SizedBox(
        // width: cellWidth,
        child: Text(
          value,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
