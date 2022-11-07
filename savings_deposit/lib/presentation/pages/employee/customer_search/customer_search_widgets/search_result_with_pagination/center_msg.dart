import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../application/language/language_bloc.dart';

class CenterMessage extends StatelessWidget {
  const CenterMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
    return Center(
      child: Opacity(
        opacity: 0.5,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(
              Icons.no_accounts,
              size: 40,
            ),
            Text(
              "Start Searching",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
