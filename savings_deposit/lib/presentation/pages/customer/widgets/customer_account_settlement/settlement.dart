import 'package:flutter/material.dart';
import 'package:savings_deposit/presentation/pages/customer/widgets/customer_account_settlement/settlement_desktop_view.dart';
import 'package:savings_deposit/presentation/pages/customer/widgets/customer_account_settlement/settlement_tab_view.dart';
import 'package:savings_deposit/presentation/responsive/responsive.dart';

class SettlementPage extends StatelessWidget {
  const SettlementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      desktop: SettlementDesktopView(),
      mobile: Text('data'),
      tablet: SettlementTabView(),
    );
  }
}
