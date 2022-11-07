import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../application/language/language_bloc.dart';

class CustomerAccountClosingBalance extends StatelessWidget {
  const CustomerAccountClosingBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
    return Container(
      height: 25,
      padding: const EdgeInsets.only(left: 50, right: 50),
      color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text("StatementClosingBalance"),
          Text("66000"),
        ],
      ),
    );
  }
}
