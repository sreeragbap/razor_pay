import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../application/language/language_bloc.dart';

// ignore: must_be_immutable
class NotificationListingWidget extends StatelessWidget {
  Widget Function(BuildContext context, int index) itemBuilder;
  int itemCount;
  ScrollController? notificatioScrollController = ScrollController();
  NotificationListingWidget(
      {Key? key, required this.itemBuilder, required this.itemCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            "Notifications",
            style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: const Color(0xff363636),
            ),
          ),
          Expanded(
            child: ListView.builder(
                controller: notificatioScrollController,
                shrinkWrap: true,
                itemCount: itemCount,
                itemBuilder: itemBuilder),
          ),
        ],
      ),
    );
  }
}
