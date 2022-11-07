import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/core/colors.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/presentation/pages/customer/widgets/customer_profile/widgets/customer_profile_details.dart';
import 'package:savings_deposit/presentation/pages/customer/widgets/customer_profile/widgets/customer_profile_pic.dart';

class CustomerProfile extends StatelessWidget {
  CustomerProfile({Key? key}) : super(key: key);
  final ScrollController _customerProfilecontroller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CustomerBloc, CustomerState>(
      listener: ((context, state) {
        state.customerProfileSuccessOrfailOption.fold(() => null, (either) {
          either.fold((failure) {
            Flushbar(
              duration: const Duration(seconds: 1),
              message: failure.map(
                  dataNotFount: (_) => "Data Not Fount",
                  clientFailure: (_) => "Client Failure",
                  serverFailure: (_) => "Server Failure",
                  dataResponseStatus: (_) {
                    return;
                  },
                  setteledaccount: (_) {
                    return;
                  }),
            );
          }, (_) {});
        });
      }),
      builder: (context, state) {
        if (state.customerProfileLoading) {
          return const Center(
            child: CircularProgressIndicator(
              color: kPrimaryColor,
            ),
          );
        }
        return state.customerProfile == null
            ? const Center(
                child: SizedBox(
                  child: Text(
                    "No profile details",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              )
            : ListView(
                controller: _customerProfilecontroller,
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(10),
                children: [
                  CustomerProfilePic(
                    customerName: state.customerProfile!.customerName ?? '',
                    imageUrl: state.customerProfile!.image ??
                        "assets/images/default_pro_pic.png",
                  ),
                  kHeight10,
                  CustomerDetails(
                    mobileNumber1: state.customerProfile!.mobileNumber1 ?? "",
                    mobileNumber2: state.customerProfile!.mobileNumber2 ?? "",
                    addressLine1: state.customerProfile!.houseName ?? "",
                    locality: state.customerProfile!.locality ?? '',
                    pinNo: state.customerProfile!.pinNo ?? 0,
                    district: state.customerProfile!.district ?? '',
                    state: state.customerProfile!.state ?? '',
                    countryName: state.customerProfile!.countryName ?? '',
                    shareCount: state.customerProfile!.shareCount!.toString(),
                  ),
                ],
              );
      },
    );
  }
}
