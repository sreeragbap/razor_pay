// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/generated/l10n.dart';
import 'package:savings_deposit/presentation/widgets/content_row/content_row.dart';
import 'package:savings_deposit/presentation/pages/customer/widgets/customer_profile/widgets/customer_profile_header.dart';

class CustomerDetails extends StatelessWidget {
  String addressLine1;
  String? locality;
  int? pinNo;
  String? shareCount;
  String? mobileNumber1;
  String? mobileNumber2;
  String? district;
  String? state;
  String? countryName;

  CustomerDetails(
      {Key? key,
      required this.addressLine1,
      required this.locality,
      required this.pinNo,
      required this.shareCount,
      required this.mobileNumber1,
      required this.mobileNumber2,
      required this.district,
      required this.state,
      required this.countryName})
      : super(key: key);

  Widget mobileIcon = const Icon(
    Icons.phone_android,
    color: Colors.grey,
  );

  @override
  Widget build(BuildContext context) {
    final bool? newSdPage = context.read<CustomerBloc>().state.newSdPage;
    final delegate = S.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomerDetailsHeader(
            headerLabel: delegate.customerProfileContact + ":"),
        kHeight5,
        ContentRow(
          label: mobileIcon,
          value: Text(mobileNumber1!),
        ),
        kHeight10,
        ContentRow(
          label: mobileIcon,
          value: Text(mobileNumber2!),
        ),
        kHeight10,
        CustomerDetailsHeader(
            headerLabel: delegate.customerProfileAddress + ":"),
        kHeight5,
        ContentRow(
          value: Text(addressLine1),
        ),
        kHeight5,
        ContentRow(
          value: Text(locality!),
        ),
        kHeight5,
        ContentRow(
          value: Text(pinNo!.toString()),
        ),
        kHeight5,
        CustomerDetailsHeader(
          headerLabel: delegate.customerProfileDistrict + ":",
        ),
        kHeight5,
        ContentRow(
          value: Text(district!),
        ),
        kHeight5,
        CustomerDetailsHeader(
          headerLabel: delegate.customerProfileState + ":",
        ),
        kHeight5,
        ContentRow(
          value: Text(state!),
        ),
        kHeight5,
        newSdPage == true
            ? const SizedBox()
            : CustomerDetailsHeader(
                headerLabel: delegate.customerProfileShareCount + ":",
              ),
        kHeight5,
        newSdPage == true
            ? const SizedBox()
            : ContentRow(
                value: Text(shareCount!),
              )
      ],
    );
  }
}
