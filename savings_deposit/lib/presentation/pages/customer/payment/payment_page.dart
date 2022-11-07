import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/application/payment/payment_bloc.dart';
import 'package:savings_deposit/application/splash/splash_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/domain/calendar/success/success.dart';
import 'package:savings_deposit/domain/customer/models/customer_models.dart';
import 'package:savings_deposit/domain/login/models/login_model.dart';
import 'package:savings_deposit/injection.dart';
import 'package:savings_deposit/presentation/pages/customer/deposit/widgets/deposit_confirmed_dailog.dart';
import 'package:savings_deposit/presentation/pages/customer/new_sd_ac/widgets/dialog_boxes.dart/confirmed_msg.dart';
import 'package:savings_deposit/presentation/pages/customer/new_sd_ac/widgets/newsd_widgets/custom_textfield.dart';
import 'package:savings_deposit/presentation/router/app_router.gr.dart';
import 'package:savings_deposit/presentation/widgets/customised_appbar/customised_appbar.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  TextEditingController emailController = TextEditingController();
  final _emailKey = GlobalKey<FormState>();
  String? _amount;
  String? _accountNumber;
  PaymentState? _paymentState;
  CustomerState? _customerState;
  LoginDetails? _loginDetails;
  @override
  void initState() {
    getIt<Razorpay>().on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    getIt<Razorpay>().on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    getIt<Razorpay>().on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);

    super.initState();
  }

  @override
  void dispose() {
    getIt<Razorpay>().clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentBloc, PaymentState>(
      listener: (context, state) {
        state.startPaymentFailureOrSuccessOption.fold(() {}, (a) {
          a.fold((failure) {
            Flushbar(
              message: failure.map(
                  clientFailure: (e) => e.failure,
                  serverFailure: (_) => "Something went wrong"),
            ).show(context);
          }, (success) {});
        });
      },
      builder: (context, state) {
        _customerState = context.read<CustomerBloc>().state;
        _loginDetails = context.read<LoginBloc>().state.loginDetails;
        _paymentState = context.read<PaymentBloc>().state;
        final branchId = _loginDetails!.branchId;
        final customerId = _loginDetails!.customerId;
        final firmId = _loginDetails!.firmId;

        /////// checking payment deposit or newsd/////////////
        if (_customerState!.depositPage!) {
          _amount = _customerState!.depositAmount;
          _accountNumber = _customerState!
              .customerActiveAccounts![_customerState!.accountCardIndex]
              .accountNumber;
        } else {
          _amount = _customerState!.newSdamount;
          _accountNumber = "0";
        }
        CustomerProfileModel? _profile = _customerState!.customerProfile!;
        bool emailNotExist =
            _profile.emailId == null || !_profile.emailId!.contains("@");
        return Scaffold(
          appBar: customizedAppBar(context),
          body: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 30),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Payment",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      kHeight30,
                      Text(
                        "₹ $_amount",
                        style: const TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 21, 127, 24)),
                      ),
                      Text(
                        _customerState!.depositPage!
                            ? "Transferring amount"
                            : "New Savings Account",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  emailNotExist
                      ? Column(
                          children: [
                            const Text(
                              "Email not linked , please enter your email id",
                              style: TextStyle(color: Colors.red),
                            ),
                            kHeight10,
                            CustomTextFormFled(
                                title: "email id",
                                validate: (value) {
                                  if (isEmail(value!)) {
                                    return "Please enter a valid email";
                                  }
                                  return "";
                                },
                                controller: emailController,
                                formkey: _emailKey),
                          ],
                        )
                      : const SizedBox(),
                  MaterialButton(
                      color: Colors.green,
                      onPressed: () {
                        // context.read<PaymentBloc>().add(
                        //     PaymentEvent.logPaymentDetails(
                        //         firmId: firmId!,
                        //         branchId: branchId!,
                        //         moduleId: 2,
                        //         refId: "12345",
                        //         reqId: _paymentState!.orderResponse!.id,
                        //         docId: _accountNumber!,
                        //         customerId: customerId!,
                        //         transactioAmount: double.parse(_amount!),
                        //         refAmount: double.parse(_amount!),
                        //         gateWayMode: 1,
                        //         paymentMode: 1,
                        //         applicationFlag: 1,
                        //         prevCharge: 100,
                        //         serviceCharge: 50,
                        //         agentCode: 123,
                        //         customerName: _loginDetails!.customerName!));

                        ///////start payment////////
                        context.read<PaymentBloc>().add(
                            PaymentEvent.startPayment(
                                customerName: _loginDetails!.customerName!,
                                amount: _amount!,
                                orderName: "Transferring to account",
                                phoneNumber: _profile.mobileNumber1 ??
                                    _profile.mobileNumber2!,
                                email: emailNotExist
                                    ? emailController.text
                                    : _profile.emailId!,
                                orderId: context
                                    .read<PaymentBloc>()
                                    .state
                                    .orderResponse!
                                    .id));
                        // Navigator.pop(context);
                      },
                      child: const Text(
                        "Pay",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  bool isEmail(String value) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = RegExp(p);

    return !regExp.hasMatch(value);
  }

  void _handlePaymentSuccess(
      PaymentSuccessResponse paymentSuccessResponse) async {
    //////loging payment success status
    // context.read<PaymentBloc>().add(PaymentEvent.logPaymentStatus(
    //       refId: "12345",
    //       reqId: _paymentState!.orderResponse!.id,
    //       custId: _loginDetails!.customerId!,
    //       docId: _accountNumber!,
    //       transactionAmount: double.parse(_amount!),
    //       gatewayTransId: "gatewayTransId",
    //       confirmString: "Success",
    //       errorString: "",
    //       resString: "Success",
    //       resTransId: "trans1234",
    //       refAmount: double.parse(_amount!),
    //       gatewayMode: 1,
    //       paymentMode: 2,
    //       applicationFlag: 1,
    //       prevCharge: 100,
    //       serCharge: 50,
    //       agentMode: 123,
    //     ));
    if (_customerState!.depositPage!) {
      context.read<CustomerBloc>().add(
            CustomerEvent.deposit(
              accountNumber: _customerState!
                  .customerActiveAccounts![_customerState!.accountCardIndex]
                  .accountNumber,
              branchId: _loginDetails!.branchId,
              firmId: _loginDetails!.firmId,
              depositAmount: _customerState!.depositAmount,
              transactionMethod: _customerState!
                  .customerPaymentDetails![_customerState!.paymentCardIndex]
                  .paymentgatewayname,
              depositChequeNumber: "",
              depositCustomerBank: "",
              subsidiaryBank: "",
              subsidiaryAccountNumber: 0,
              customerName: _loginDetails!.customerName,
              empCode: 0,
              depositRealizationDate: DateTime.now(),
            ),
          );
      context.read<CustomerBloc>().add(CustomerEvent.fetchCustomerAccounts(
          customerId: _loginDetails!.customerId!));
      await depositConfirmedDailog(
          context, context, _customerState!.customerActiveAccounts!);
    } else {
      context.read<CustomerBloc>().add(CustomerEvent.newSdPostingValues(
          moduleId: context.read<SplashBloc>().state.splashModel!.moduleId,
          customerName: _loginDetails!.customerName!,
          firmId: _loginDetails!.firmId!,
          customerId: _loginDetails!.customerId!,
          subsidiaryAccountNo: 0));
      context.read<CustomerBloc>().add(CustomerEvent.fetchCustomerAccounts(
          customerId: _loginDetails!.customerId!));
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return const NewSdConfirmedMessage();
          });
    }

    // context.router.push(const PaymentSuccessRoute());
  }

  void _handlePaymentError(PaymentFailureResponse paymentFailureResponse) {
    print("Payment failed");

    //////loging payment fail status
    // context.read<PaymentBloc>().add(PaymentEvent.logPaymentStatus(
    //       refId: "12345",
    //       reqId: _paymentState!.orderResponse!.id,
    //       custId: _loginDetails!.customerId!,
    //       docId: _accountNumber!,
    //       transactionAmount: double.parse(_amount!),
    //       gatewayTransId: "gatewayTransId",
    //       confirmString: "Failed",
    //       errorString: "",
    //       resString: "Failed",
    //       resTransId: "trans1234",
    //       refAmount: double.parse(_amount!),
    //       gatewayMode: 1,
    //       paymentMode: 2,
    //       applicationFlag: 1,
    //       prevCharge: 100,
    //       serCharge: 50,
    //       agentMode: 123,
    //     ));
    context.read<PaymentBloc>().add(const PaymentEvent.paymentCancelled());
    if (paymentFailureResponse.code == Razorpay.PAYMENT_CANCELLED) {
      print("Payment failed");
    }
  }

  void _handleExternalWallet(ExternalWalletResponse externalWalletResponse) {
    //////// external wallet
    // context.read<PaymentBloc>().add(PaymentEvent.logPaymentStatus(
    //       refId: "12345",
    //       reqId: _paymentState!.orderResponse!.id,
    //       custId: _loginDetails!.customerId!,
    //       docId: _accountNumber!,
    //       transactionAmount: double.parse(_amount!),
    //       gatewayTransId: "gatewayTransId",
    //       confirmString: "External wallet",
    //       errorString: "",
    //       resString: "External wallet",
    //       resTransId: "trans1234",
    //       refAmount: double.parse(_amount!),
    //       gatewayMode: 1,
    //       paymentMode: 2,
    //       applicationFlag: 1,
    //       prevCharge: 100,
    //       serCharge: 50,
    //       agentMode: 123,
    //     ));
    context.read<PaymentBloc>().add(const PaymentEvent.externalError());
  }

  void _handlePaymentCancel() {}
}
