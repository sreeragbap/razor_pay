// ignore_for_file: avoid_print, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../application/cheque_recouncilation/cheque_recouncilation_bloc.dart';
import '../../../../generated/l10n.dart';
import '../../../responsive/responsive.dart';
import 'cheque_recouncilation_desktop.dart';
import 'cheque_recouncilation_tab.dart';

class ChequeRecouncilationPage extends StatelessWidget {
  const ChequeRecouncilationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final delegate = S.of(context);
    context.read<ChequeRecouncilationBloc>().add(
          const ChequeRecouncilationEvent.getChequeRecounciledList(),
        );

    return Scaffold(
      body: Responsive(
        desktop: chequeRecouncilationDesktop(context),
        tablet: chequeRecouncilationTab(context),
        mobile: chequeRecouncilationTab(context),
      ),
    );
  }
}
