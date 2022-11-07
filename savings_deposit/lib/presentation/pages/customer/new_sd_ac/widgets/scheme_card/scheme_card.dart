// ignore_for_file: prefer_adjacent_string_concatenation, unused_local_variable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/presentation/widgets/sd_card/sd_card.dart';
import 'package:savings_deposit/presentation/widgets/sd_carousel_slider/sd_carousel_slider.dart';

import '../../../../../../application/language/language_bloc.dart';
import '../../../../../../generated/l10n.dart';

class SchemeCards extends StatelessWidget {
  const SchemeCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final delegate = S.of(context);
    final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
    CarouselController carouselController = CarouselController();
    return SafeArea(
      child: SdCarouselSlider(
        onPageChanged: (
          index,
        ) {
          context
              .read<CustomerBloc>()
              .add(CustomerEvent.schemeCardChanged(schemeCardIndex: index));
        },
        items: context
            .read<CustomerBloc>()
            .state
            .availableschemeModel!
            .map((account) {
          return SdCard(
            color: Colors.red,
            content: Container(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 25,
                    child: Image.asset('assets/images/macom-login.png',
                        width: 50, height: 50),
                  ),
                  kHeight15,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        account.SD == null
                            ? delegate.NsSchemeName + ": SD"
                            : delegate.NsSchemeName +
                                " :" +
                                account.SD.toString(),
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        " ",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  kHeight10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        account.maxAmount == null
                            ? delegate.NsMaximumAmount + ": No Limit"
                            : delegate.NsMaximumAmount +
                                " : " +
                                " ₹" +
                                account.maxAmount.toString(),
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Flexible(
                        child: Text(
                            delegate.NsSchemeID +
                                ": ${account.schemeId.toString()} ",
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            )),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          account.minimumAmount == null
                              ? delegate.NsMinimumAmount + ": No Limit"
                              : delegate.NsMinimumAmount +
                                  " : " +
                                  " ₹" +
                                  account.minimumAmount.toString(),
                          // account[acnumber],
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            // account[labelColor],
                          ),
                        ),
                      ),
                      Text(
                        delegate.NsInterestRate +
                            ": ${account.interestRate.toString()}%",
                        // account[acnumber],
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          // account[labelColor],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
      // Center(child: Text(places[_current])),
    );
  }
}
