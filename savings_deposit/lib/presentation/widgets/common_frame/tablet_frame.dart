import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_deposit/application/employee/employee_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/presentation/pages/employee/customer_search/customer_search_widgets/customer_search_bar.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/customer/customer_bloc.dart';
import '../../../application/login/login_bloc.dart';
import '../../../core/colors.dart';
import '../../pages/customer/new_sd_ac/new_savings_account.dart';

class TabletFrame extends StatelessWidget {
  TabletFrame({
    Key? key,
    required this.headOfScreen,
    required this.leftsideOfScreen,
    required this.centerOfScreen,
    required this.rightsideUpSecion1,
    required this.rightsideDownOfScreen,
    required this.rightsideUpSection2,
  }) : super(key: key);
  final Widget headOfScreen;
  final Widget leftsideOfScreen;
  final Widget centerOfScreen;
  final Widget rightsideUpSecion1;
  final Widget rightsideUpSection2;
  final Widget rightsideDownOfScreen;
  final scrollControler = ScrollController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        Widget? _showWidget = landingPageWidget(context, state);
        if (state is EmployeePageState) {
          _showWidget = landingPageWidget(context, state);
        } else if (state is CustomerPageState) {
          _showWidget = customerPortfolio(context, state);
        }
        return _showWidget;
      },
    );
  }

  Row landingPageWidget(BuildContext context, AuthState state) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => Dialog(
                              child: SizedBox(
                                height: 350,
                                width: 350,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Menu",
                                      style: GoogleFonts.poppins(
                                          fontSize: 28,
                                          color: const Color.fromARGB(
                                              255, 121, 4, 96),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    kHeight30,
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Home"),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("BH Verification"),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child:
                                          const Text("Cheque Reconciliation"),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        context.read<AuthBloc>().add(
                                              const AuthEvent
                                                  .customerPageEvent(),
                                            );
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Customer Page"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        icon: const Icon(Icons.menu)),
                    kWidth5,
                    Expanded(
                      flex: 5,
                      child: Neumorphic(
                        style: const NeumorphicStyle(
                          depth: 3,
                          oppositeShadowLightSource: true,
                          shadowDarkColor: Color(0xffffffff),
                          shadowDarkColorEmboss: Color(0xffffffff),
                          shadowLightColor: Color.fromARGB(125, 0, 0, 0),
                          shadowLightColorEmboss: Color.fromARGB(118, 0, 0, 0),
                          color: kbackgroundColor,
                        ),
                        margin: kPadding10,
                        child: SizedBox(
                          height: 200,
                          width: 1200,
                          child: headOfScreen,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    // Expanded(
                    //   flex: 2,
                    //   child: Neumorphic(
                    //     style: const NeumorphicStyle(
                    //       depth: 3,
                    //       oppositeShadowLightSource: true,
                    //       shadowDarkColor: Color(0xffffffff),
                    //       shadowDarkColorEmboss: Color(0xffffffff),
                    //       shadowLightColor: Color.fromARGB(125, 0, 0, 0),
                    //       shadowLightColorEmboss: Color.fromARGB(118, 0, 0, 0),
                    //       color: kbackgroundColor,
                    //     ),
                    //     margin: kPadding10,
                    //     child: SizedBox(
                    //       height: 1200,
                    //       child: leftsideOfScreen,
                    //     ),
                    //   ),
                    // ),
                    Expanded(
                      flex: 4,
                      child: Neumorphic(
                        style: const NeumorphicStyle(
                          oppositeShadowLightSource: true,
                          depth: 3,
                          shadowDarkColor: Color(0xffffffff),
                          shadowDarkColorEmboss: Color(0xffffffff),
                          shadowLightColor: Color.fromARGB(125, 0, 0, 0),
                          shadowLightColorEmboss: Color.fromARGB(118, 0, 0, 0),
                          color: kbackgroundColor,
                        ),
                        margin: kPadding10,
                        child: SizedBox(
                          height: 1200,
                          child: centerOfScreen,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Row customerPortfolio(BuildContext context, AuthState state) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          // final delegate = S.of(context);
                          showDialog(
                            context: context,
                            builder: (context) => Dialog(
                              child: SizedBox(
                                width: 350,
                                height: 350,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Menu",
                                      style: GoogleFonts.poppins(
                                          fontSize: 28,
                                          color: const Color.fromARGB(
                                              255, 121, 4, 96),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    kHeight30,
                                    TextButton(
                                      onPressed: () {
                                        context.read<CustomerBloc>().add(
                                              const CustomerEvent
                                                  .newSdValidateAganeOrEmployee(
                                                newSdsalesCode: '',
                                                agentOrEmployee: "empcode",
                                              ),
                                            );
                                        context.read<CustomerBloc>().add(
                                              const CustomerEvent
                                                  .coApplicantRights(
                                                coApplicantSubType: 0,
                                                coApplicantRights: 'none',
                                                // statusid: 0,
                                              ),
                                            );
                                        amountcontroller.clear();
                                        salesCodeController.clear();
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
                                                const CustomerEvent
                                                    .newSdnomineeDetails(
                                              relationWithNominee: "",
                                              nomineePhoneNumber: "",
                                              nomineeParentOrSpouseName: "",
                                              nomineeName: "",
                                              nomineeGuardian: "",
                                              nomineeHouseName: "",
                                              nomineelocation: "",
                                              nomineedob: "",
                                            ));
                                        context.read<CustomerBloc>().add(
                                              const CustomerEvent
                                                  .newSdValidateAganeOrEmployee(
                                                newSdsalesCode: '',
                                                agentOrEmployee: "",
                                              ),
                                            );
                                        context.read<CustomerBloc>().add(
                                            const CustomerEvent
                                                .customerAccountInfoPageEvent());
                                        if (context
                                                .read<LoginBloc>()
                                                .state
                                                .loginDetails!
                                                .userType ==
                                            "Employee") {
                                          context.read<CustomerBloc>().add(
                                                  CustomerEvent
                                                      .fetchCustomerAccounts(
                                                customerId: context
                                                    .read<CustomerBloc>()
                                                    .state
                                                    .searchResultCustomerID
                                                    .toString(),
                                              ));
                                        } else if (context
                                                .read<LoginBloc>()
                                                .state
                                                .loginDetails!
                                                .userType ==
                                            "Customer") {
                                          context.read<CustomerBloc>().add(
                                                  CustomerEvent
                                                      .fetchCustomerAccounts(
                                                customerId: context
                                                    .read<LoginBloc>()
                                                    .state
                                                    .loginDetails!
                                                    .customerId!,
                                              ));
                                        }
                                        searchController.clear();

                                        context
                                            .read<EmployeeBloc>()
                                            .add(const EmployeeEvent.started());
                                        if (context
                                                .read<CustomerBloc>()
                                                .state
                                                .radioButtonActive ==
                                            true) {
                                          context.read<CustomerBloc>().add(
                                              const CustomerEvent
                                                  .resetRadioButton());
                                        }

                                        if (context
                                                .read<CustomerBloc>()
                                                .state
                                                .minor ==
                                            true) {
                                          context.read<CustomerBloc>().add(
                                              const CustomerEvent
                                                  .nomineeMinor());
                                        }

                                        context.read<CustomerBloc>().add(
                                            const CustomerEvent
                                                    .relationWithApplicant(
                                                relation: "Relation"));
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Home"),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // context.read<CustomerBloc>().add(
                                        //     const CustomerEvent.newSdEevent());
                                        // Navigator.pop(context);
                                      },
                                      child: const Text("New Savings Account"),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Deposit"),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Fund Transfer"),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        icon: const Icon(Icons.menu)),
                    kWidth5,
                    Expanded(
                      flex: 5,
                      child: Neumorphic(
                        style: const NeumorphicStyle(
                          depth: 3,
                          oppositeShadowLightSource: true,
                          shadowDarkColor: Color(0xffffffff),
                          shadowDarkColorEmboss: Color(0xffffffff),
                          shadowLightColor: Color.fromARGB(125, 0, 0, 0),
                          shadowLightColorEmboss: Color.fromARGB(118, 0, 0, 0),
                          color: kbackgroundColor,
                        ),
                        margin: kPadding10,
                        child: SizedBox(
                          height: 200,
                          width: 1200,
                          child: headOfScreen,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Neumorphic(
                        style: const NeumorphicStyle(
                          oppositeShadowLightSource: true,
                          depth: 3,
                          shadowDarkColor: Color(0xffffffff),
                          shadowDarkColorEmboss: Color(0xffffffff),
                          shadowLightColor: Color.fromARGB(125, 0, 0, 0),
                          shadowLightColorEmboss: Color.fromARGB(118, 0, 0, 0),
                          color: kbackgroundColor,
                        ),
                        margin: kPadding10,
                        child: SizedBox(
                          height: 1200,
                          child: centerOfScreen,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Neumorphic(
                  style: const NeumorphicStyle(
                    oppositeShadowLightSource: true,
                    depth: 3,
                    shadowDarkColor: Color(0xffffffff),
                    shadowDarkColorEmboss: Color(0xffffffff),
                    shadowLightColor: Color.fromARGB(125, 0, 0, 0),
                    shadowLightColorEmboss: Color.fromARGB(118, 0, 0, 0),
                    color: kbackgroundColor,
                  ),
                  margin: kPadding10,
                  child: SizedBox(
                    width: 800,
                    child: state is EmployeePageState
                        ? ListView(
                            controller: scrollControler,
                            scrollDirection: Axis.vertical,
                            children: [
                              rightsideUpSecion1,
                              kHeight30,
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: rightsideUpSection2,
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              rightsideUpSecion1,
                              Expanded(child: rightsideUpSection2),
                            ],
                          ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Neumorphic(
                  style: const NeumorphicStyle(
                    oppositeShadowLightSource: true,
                    depth: 3,
                    shadowDarkColor: Color(0xffffffff),
                    shadowDarkColorEmboss: Color(0xffffffff),
                    shadowLightColor: Color.fromARGB(125, 0, 0, 0),
                    shadowLightColorEmboss: Color.fromARGB(118, 0, 0, 0),
                    color: kbackgroundColor,
                  ),
                  margin: kPadding10,
                  child: SizedBox(
                    width: 800,
                    child: rightsideDownOfScreen,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
