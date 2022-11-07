// ignore_for_file: avoid_print

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_deposit/application/employee/employee_bloc.dart';
import 'package:savings_deposit/core/constants.dart';

import '../../../../../../application/customer/customer_bloc.dart';
import '../../../../../../application/language/language_bloc.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../employee/customer_search/customer_search.dart';
import '../../../../employee/customer_search/customer_search_widgets/customer_search_bar.dart';
import '../../../widgets/customer_profile/customer_profile.dart';

class NewSdCoApplicant extends StatelessWidget {
  const NewSdCoApplicant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerBloc, CustomerState>(builder: (context, state) {
      final delegate = S.of(context);
      final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
      return TextButton(
        onPressed: () {
          FocusScope.of(context).unfocus();
          print(state.newSdcoApplicantName);
          if (state.newSdcoApplicantName == null) {
            searchController.clear();
            context.read<CustomerBloc>().add(
                  const CustomerEvent.coApplicantRights(
                    coApplicantSubType: 0,
                    coApplicantRights: 'none',
                    // statusid: 0,
                  ),
                );
            context.read<EmployeeBloc>().add(const EmployeeEvent.started());
///////////////// showing customer search to select co-applicant////////////////////
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return BlocBuilder<EmployeeBloc, EmployeeState>(
                    builder: (context, state) {
                      return const Dialog(
                          insetAnimationDuration: kDuration2,
                          insetPadding: EdgeInsets.all(0),
                          child: CustomerSearchPage());
                    },
                  );
                });
          } else if (state.newSdcoApplicantName!.isNotEmpty) {
            context.read<CustomerBloc>().add(
                  CustomerEvent.fetchCustomerProfile(
                      customerId: state.newSdcoApplicantId.toString()),
                );
//////////////// showing selected co-applicant after adding co-applicant/////////////////////
            showDialog(
                barrierColor: const Color.fromARGB(255, 133, 130, 130),
                //Colors.transaperant.withOpacity(0.9)
                context: context,
                builder: (BuildContext context) {
                  return BlocBuilder<EmployeeBloc, EmployeeState>(
                    builder: (context, state) {
                      return Dialog(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: SizedBox(
                            width: 450,
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 680,
                                    width: 1000,
                                    child: CustomerProfile(),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          context.read<CustomerBloc>().add(
                                                CustomerEvent.fetchCustomerProfile(
                                                    customerId: context
                                                        .read<CustomerBloc>()
                                                        .state
                                                        .searchResultCustomerID),
                                              );

                                          Navigator.pop(context);

                                          context.read<EmployeeBloc>().add(
                                              const EmployeeEvent.started());
                                        },
                                        child: SizedBox(
                                          height: 50,
                                          width: 150,
                                          child: Neumorphic(
                                            style: const NeumorphicStyle(
                                                shape: NeumorphicShape.concave),
                                            child: Center(
                                              child: Text(
                                                delegate.NsGoback,
                                                style: GoogleFonts.poppins(
                                                  fontSize:
                                                      ismalayalam ? 11 : 20,
                                                  color: const Color(
                                                    0xff914686,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      kWidth50,
                                      GestureDetector(
                                        onTap: () {
                                          context.read<CustomerBloc>().add(
                                                const CustomerEvent
                                                    .coApplicantRights(
                                                  coApplicantSubType: 0,
                                                  coApplicantRights: 'none',
                                                  // statusid: 0,
                                                ),
                                              );
                                          context.read<CustomerBloc>().add(
                                              const CustomerEvent
                                                  .resetRadioButton());
                                          context.read<CustomerBloc>().add(
                                                  const CustomerEvent
                                                      .newSdcoApplicantDetails(
                                                null,
                                                null,
                                                null,
                                                null,
                                                null,
                                                null,
                                              ));
                                          context.read<CustomerBloc>().add(
                                              CustomerEvent.fetchCustomerProfile(
                                                  customerId: context
                                                      .read<CustomerBloc>()
                                                      .state
                                                      .searchResultCustomerID));
                                          Navigator.pop(context);
                                        },
                                        child: SizedBox(
                                          height: 50,
                                          width: 150,
                                          child: Neumorphic(
                                            style: const NeumorphicStyle(
                                                shape: NeumorphicShape.concave),
                                            child: Center(
                                              child: Text(
                                                delegate.NsDeleteData,
                                                style: GoogleFonts.poppins(
                                                    fontSize:
                                                        ismalayalam ? 11 : 20,
                                                    color: const Color(
                                                        0xff914686)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  kHeight20,
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                });
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: Neumorphic(
                    style: const NeumorphicStyle(
                      boxShape: NeumorphicBoxShape.rect(),
                    ),
                    child: state.radioButtonActive
                        ? Image.asset(
                            "assets/icons/tick_icon.png",
                            width: 40,
                            height: 40,
                          )
                        : const SizedBox(),
                  ),
                ),
                kWidth10,
                Text(
                  delegate.NsCoApplicantDetails,
                  style: TextStyle(
                    fontSize: ismalayalam ? 11 : 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff914686),
                  ),
                )
              ],
            ),
            state.newSdcoApplicantName == null
                ? const SizedBox()
                : Text(
                    state.newSdcoApplicantName.toString(),
                    style: TextStyle(
                      fontSize: ismalayalam ? 10 : 12,
                      color: const Color.fromARGB(255, 222, 21, 21),
                    ),
                  ),
          ],
        ),
      );
    });
  }
}
