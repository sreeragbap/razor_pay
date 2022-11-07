import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/generated/l10n.dart';

class CurrentCompanyBranch extends StatelessWidget {
  const CurrentCompanyBranch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final delegate = S.of(context);
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              delegate.MABEN_NIDHI_LIMITED,
              softWrap: true,
              style: GoogleFonts.poppins(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff914686)),
              maxLines: 1,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              state.loginDetails!.branchname.toString(),
              style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff363636)),
              maxLines: 1,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        );
      },
    );
  }
}
