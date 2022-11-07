import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/application/employee/employee_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/domain/login/models/login_model.dart';
import 'package:savings_deposit/generated/l10n.dart';
import 'package:savings_deposit/presentation/pages/customer/deposit/widgets/payment_card_content.dart';
import 'package:savings_deposit/presentation/pages/customer/widgets/customer_profile/customer_profile.dart';
import 'package:savings_deposit/presentation/pages/customer/widgets/customer_profile_notifications/customer_profile_notification_widget.dart';
import 'package:savings_deposit/presentation/pages/customer/widgets/customer_profile_piechart/customer_profile_piechart.dart';
import 'package:savings_deposit/presentation/pages/customer/withdrawal/widgets/all_cards.dart';
import 'package:savings_deposit/presentation/pages/employee/customer_search/customer_search_widgets/customer_search_bar.dart';
import 'package:savings_deposit/presentation/router/app_router.gr.dart';
import 'package:savings_deposit/presentation/widgets/alert_show_dialogue/alert_show_dialogue.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../core/colors.dart';
import '../../../core/constants.dart';

class MobileFrame extends StatelessWidget {
  MobileFrame({
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

  Scaffold landingPageWidget(BuildContext context, AuthState state) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: AppBar(
        backgroundColor: kbackgroundColor,
        centerTitle: true,
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "MABEN NIDHI LIMITED",
            style: GoogleFonts.poppins(
              fontSize: 22,
              color: const Color.fromARGB(255, 121, 4, 96),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => Dialog(
                child: SizedBox(
                  width: 350,
                  height: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Menu",
                        style: GoogleFonts.poppins(
                          fontSize: 28,
                          color: const Color.fromARGB(255, 121, 4, 96),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      kHeight30,
                      TextButton(
                        onPressed: () {
                          context.read<AuthBloc>().add(
                                const AuthEvent.customerPageEvent(),
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
          icon: const Icon(
            Icons.menu,
            color: Color(0xff363636),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.push(context, route)
            },
            icon: const Icon(
              Icons.edit_calendar,
              color: Color(0xff363636),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Color(0xff363636),
            ),
          )
        ],
      ),
      body: centerOfScreen,
      // Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Expanded(
      //       flex: 4,
      //       child: SizedBox(
      //         height: 1200,
      //         child: centerOfScreen,
      //       ),
      //     )
      //   ],
      // ),
    );
  }

  Scaffold customerPortfolio(BuildContext context, AuthState state) {
    final delegate = S.of(context);
    final _loginDetails = context.read<LoginBloc>().state.loginDetails!;
    int notificationCount =
        context.read<CustomerBloc>().state.customerNotification!.length;
    return Scaffold(
      backgroundColor: kbackgroundColor,
      drawer: Drawer(
          backgroundColor: Colors.grey[200],
          child: drawerContent(context, delegate, _loginDetails)),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: kPrimaryColor),
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: kbackgroundColor,
        title: headOfScreen,
        actions: [
          Align(
            alignment: Alignment.center,
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                IconButton(
                    splashRadius: 25,
                    onPressed: () {
                      showNotifications(context);
                    },
                    iconSize: 35,
                    icon: const Icon(Icons.notifications)),
                BlocBuilder<CustomerBloc, CustomerState>(
                  builder: (context, state) {
                    if (state.customerNotification!.isNotEmpty) {
                      return Positioned(
                        top: 8,
                        right: 6,
                        child: InkWell(
                          onTap: (() {
                            context.read<CustomerBloc>().add(
                                CustomerEvent.fetchCustomerNotifications(
                                    customerId: context
                                        .read<LoginBloc>()
                                        .state
                                        .loginDetails!
                                        .customerId!));
                            showNotifications(context);
                          }),
                          child: CircleAvatar(
                            foregroundColor: Colors.red,
                            radius: 9,
                            child: Text(
                              state.customerNotification!.length.toString(),
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      );
                    } else {
                      return kHeight1;
                    }
                  },
                )
              ],
            ),
          ),
          IconButton(
            splashRadius: 25,
            onPressed: () {
              sdShowDailogue(
                  context: context,
                  dailogue: AlertDialog(
                    content: const SizedBox(
                        height: 250,
                        width: 250,
                        child: CustomerProfilePieChart()),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("Ok"))
                    ],
                  ));
            },
            icon: Image.asset(
              "assets/icons/piechart_icon.png",
            ),
          ),
          IconButton(
            splashRadius: 25,
            onPressed: () {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text("Do you want to Exit"),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: const Text("No"),
                    ),
                    TextButton(
                      onPressed: () {
                        context.router.replaceAll([const InitialRoute()]);
                        context
                            .read<CustomerBloc>()
                            .add(const CustomerEvent.started());
                        context
                            .read<EmployeeBloc>()
                            .add(const EmployeeEvent.started());
                        searchController.clear();
                      },
                      child: const Text("Yes"),
                    ),
                  ],
                ),
              );
            },
            icon: const Icon(
              Icons.logout,
              color: Color(0xff363636),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Expanded(
          //   flex: 1,
          //   child: Neumorphic(
          //     child: SizedBox(
          //       height: 50,
          //       width: double.infinity,
          //       child: Center(child: headOfScreen),
          //     ),
          //   ),
          // ),
          Expanded(
            flex: 6,
            child: centerOfScreen,
          )
        ],
      ),
    );
  }

  showNotifications(BuildContext context) {
    // context.read<CustomerBloc>().add(CustomerEvent.fetchCustomerNotifications(
    //     customerId: context.read<LoginBloc>().state.loginDetails!.customerId!));
    return sdShowDailogue(
        context: context,
        dailogue: AlertDialog(
          content: SizedBox(
              height: 250, width: 250, child: CustomerProfileNotification()),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Ok"))
          ],
        ));
  }

  drawerContent(BuildContext context, S delegate, LoginDetails _loginDetails) {
    final width = MediaQuery.of(context).size.width * 0.1;
    return ListView(
      children: [
        DrawerHeader(
          child: Column(
            children: [
              Text(
                delegate.MABEN_NIDHI_LIMITED,
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  color: const Color.fromARGB(255, 121, 4, 96),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                "assets/icons/macom.png",
                height: 90,
                width: 50,
              ),
            ],
          ),
        ),
        drawerListTile(
            label: "Home",
            onTap: () {
              context.read<CustomerBloc>().add(
                    const CustomerEvent.newSdValidateAganeOrEmployee(
                      newSdsalesCode: '',
                      agentOrEmployee: "",
                    ),
                  );
              context.read<CustomerBloc>().add(
                    const CustomerEvent.newSdValidateAganeOrEmployee(
                      newSdsalesCode: '',
                      agentOrEmployee: "",
                    ),
                  );
              context.read<CustomerBloc>().add(
                    const CustomerEvent.coApplicantRights(
                      coApplicantSubType: 0,
                      coApplicantRights: 'none',
                      // statusid: 0,
                    ),
                  );
              if (context.read<CustomerBloc>().state.nomineeACtive == true) {
                context
                    .read<CustomerBloc>()
                    .add(const CustomerEvent.nomineeActive());
              }
              context
                  .read<CustomerBloc>()
                  .add(const CustomerEvent.newSdcoApplicantDetails(
                    null,
                    null,
                    null,
                    null,
                    null,
                    null,
                  ));

              context
                  .read<CustomerBloc>()
                  .add(const CustomerEvent.newSdnomineeDetails(
                    relationWithNominee: "",
                    nomineePhoneNumber: "",
                    nomineeParentOrSpouseName: "",
                    nomineeName: "",
                    nomineeGuardian: "",
                    nomineeHouseName: "",
                    nomineelocation: "",
                    nomineedob: "",
                  ));
              context
                  .read<CustomerBloc>()
                  .add(const CustomerEvent.customerAccountInfoPageEvent());
              final _customerId = context
                          .read<LoginBloc>()
                          .state
                          .loginDetails!
                          .userType ==
                      "Employee"
                  ? context.read<CustomerBloc>().state.searchResultCustomerID
                  : context.read<LoginBloc>().state.loginDetails!.customerId!;
              context.read<CustomerBloc>().add(
                  CustomerEvent.fetchCustomerAccounts(customerId: _customerId));
              context.read<CustomerBloc>().add(
                  CustomerEvent.fetchCustomerScheduledTransactions(
                      customerId: _customerId));

              searchController.clear();

              context.read<EmployeeBloc>().add(const EmployeeEvent.started());
              if (context.read<CustomerBloc>().state.radioButtonActive ==
                  true) {
                context
                    .read<CustomerBloc>()
                    .add(const CustomerEvent.resetRadioButton());
              }
              context.read<CustomerBloc>().add(
                  const CustomerEvent.accountCardChanged(accountCardIndex: 0));
              searchsdid.clear();
              searchRdNo.clear();
              goldloanno.clear();
              Navigator.pop(context);
            }),
        drawerListTile(
            label: "New Savings Account",
            onTap: () {
              context
                  .read<CustomerBloc>()
                  .add(const CustomerEvent.newSdPageEvent());

              context.read<CustomerBloc>().add(CustomerEvent.availableSchemes(
                  branchid: context
                      .read<CustomerBloc>()
                      .state
                      .searchResultBranchId
                      .toString()));

              context.read<CustomerBloc>().add(CustomerEvent.fetchPaymentCards(
                  paymentType: 'Receipt', userType: _loginDetails.userType!));
              //////////page event//////////
              context.read<CustomerBloc>().state.minor
                  ? context
                      .read<CustomerBloc>()
                      .add(const CustomerEvent.nomineeMinor())
                  : kHeight1;
              context.read<CustomerBloc>().add(
                    const CustomerEvent.newSdValidateAganeOrEmployee(
                      newSdsalesCode: '',
                      agentOrEmployee: "mobilenumber",
                    ),
                  );
              context
                  .read<CustomerBloc>()
                  .add(const CustomerEvent.employeeOrAgent(0));
              context.read<CustomerBloc>().add(
                  const CustomerEvent.paymentCardChanged(paymentCardIndex: 0));
              context
                  .read<CustomerBloc>()
                  .add(const CustomerEvent.newSdPageEvent());
              context
                  .read<CustomerBloc>()
                  .add(const CustomerEvent.fetchBankDetails());
              context
                  .read<CustomerBloc>()
                  .add(const CustomerEvent.setDropDownBankToInitial());
              clearCustomerChequeData(context);
              Navigator.of(context).pop();
            }),
        drawerListTile(
            label: "Deposit",
            onTap: () {
              context.read<CustomerBloc>().add(CustomerEvent.fetchPaymentCards(
                  paymentType: 'Receipt', userType: _loginDetails.userType!));
              //////////page event//////////
              context
                  .read<CustomerBloc>()
                  .add(const CustomerEvent.depositPageEvent());

              context
                  .read<CustomerBloc>()
                  .add(const CustomerEvent.fetchBankDetails());

              context.read<CustomerBloc>().add(
                  const CustomerEvent.paymentCardChanged(paymentCardIndex: 0));
              context.read<CustomerBloc>().add(
                  const CustomerEvent.accountCardChanged(accountCardIndex: 0));
              context
                  .read<CustomerBloc>()
                  .add(const CustomerEvent.setDropDownBankToInitial());

              clearCustomerChequeData(context);
              Navigator.pop(context);
            }),
        drawerListTile(
            label: "Withdrawal",
            onTap: () {
              context.read<CustomerBloc>().add(
                  CustomerEvent.fetchCustomerOtherBankAccounts(
                      userType: _loginDetails.userType!,
                      customerId: _loginDetails.userType == "Customer"
                          ? context
                              .read<LoginBloc>()
                              .state
                              .loginDetails!
                              .customerId!
                          : _loginDetails.userType == "Employee"
                              ? context
                                  .read<CustomerBloc>()
                                  .state
                                  .searchResultCustomerID
                              : ""));
              //////////page event//////////
              context
                  .read<CustomerBloc>()
                  .add(const CustomerEvent.fundTransferPageEvent());
              context.read<CustomerBloc>().add(
                  const CustomerEvent.otherBankcardchanged(otherbankindex: 0));
              context
                  .read<CustomerBloc>()
                  .add(const CustomerEvent.switchbutton(false));
              searchsdid.clear();
              searchRdNo.clear();
              goldloanno.clear();
              Navigator.pop(context);
              clearCustomerCardData(context);
            }),
        drawerListTile(
            label: "Profile",
            onTap: () {
              sdShowDailogue(
                context: context,
                dailogue: AlertDialog(
                  content: SizedBox(width: width, child: CustomerProfile()),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("Ok"))
                  ],
                ),
              );
            })
      ],
    );
  }

  Widget drawerListTile(
      {required String label, required void Function()? onTap}) {
    return ListTile(
      title: Text(
        label,
        style: GoogleFonts.poppins(
          fontSize: 14,
          color: const Color.fromARGB(255, 121, 4, 96),
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
    );
  }
}
