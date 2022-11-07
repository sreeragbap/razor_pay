import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/language/language_bloc.dart';

class DropdownList extends StatefulWidget {
  const DropdownList({Key? key}) : super(key: key);

  @override
  State<DropdownList> createState() => _DropdownListState();
}

class _DropdownListState extends State<DropdownList> {
  dynamic valueChoosen;
  @override
  Widget build(
    BuildContext context,
  ) {
    final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
    // ignore: avoid_unnecessary_containers
    return Container(
      child: DropdownButton(
          value: valueChoosen,
          items: [
            DropdownMenuItem(
              child: const Text("Bounce"),
              value: "Bounce",
              onTap: () {},
            ),
            // DropdownMenuItem(
            //   child: const Text("Approve"),
            //   value: "Approve",
            //   onTap: () {},
            // ),
            DropdownMenuItem(
              child: const Text("verify"),
              value: "verify",
              onTap: () {},
            ),
            DropdownMenuItem(
              child: const Text("ChequeRecouncilation List"),
              value: "ChequeRecouncilation List",
              onTap: () {},
            )
          ],
          onChanged: (value) {
            setState(() {
              valueChoosen = value;
            });
          },
          hint: const Text("Sorted Items")),
    );
  }
}
