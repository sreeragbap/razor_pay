import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/application/employee/employee_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/presentation/pages/employee/customer_search/customer_search_widgets/customer_search_bar.dart';

import '../../../../../application/language/language_bloc.dart';
import '../../../../../generated/l10n.dart';

class CustomRadioButtons extends StatelessWidget {
  const CustomRadioButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeeBloc, EmployeeState>(
      builder: (context, state) {
        final delegate = S.of(context);
        final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;

        final bool? newSdPage = context.read<CustomerBloc>().state.newSdPage;
        return newSdPage == true
            ? FittedBox(
                fit: BoxFit.scaleDown,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    kWidth20,
                    Row(
                      children: [
                        Radio(
                          value: 2,
                          groupValue: state.radioButtonValue,
                          activeColor: const Color(0xff914686),
                          onChanged: (_) {
                            searchController.clear();
                            context.read<EmployeeBloc>().add(
                                  const EmployeeEvent
                                      .radioButttonGroupValueEvent(2),
                                );
                          },
                        ),
                        Text(
                          delegate.CsRadioMobileNumber,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xff363636),
                          ),
                        ),
                      ],
                    ),
                    kWidth20,
                  ],
                ),
              )
            : FittedBox(
                fit: BoxFit.scaleDown,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    kWidth20,
                    Row(
                      children: [
                        Radio(
                          value: 0,
                          groupValue: state.radioButtonValue,
                          activeColor: const Color(0xff914686),
                          onChanged: (_) {
                            searchController.clear();
                            context.read<EmployeeBloc>().add(
                                  const EmployeeEvent
                                      .radioButttonGroupValueEvent(0),
                                );
                          },
                        ),
                        Text(
                          delegate.CsRadioCustomerName,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xff363636),
                          ),
                        ),
                      ],
                    ),
                    kWidth20,
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: state.radioButtonValue,
                          activeColor: const Color(0xff914686),
                          onChanged: (_) {
                            searchController.clear();
                            context.read<EmployeeBloc>().add(
                                  const EmployeeEvent
                                      .radioButttonGroupValueEvent(1),
                                );
                          },
                        ),
                        Text(
                          delegate.CsRadioCustomerId,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xff363636),
                          ),
                        ),
                      ],
                    ),
                    kWidth20,
                    Row(
                      children: [
                        Radio(
                          value: 2,
                          groupValue: state.radioButtonValue,
                          activeColor: const Color(0xff914686),
                          onChanged: (_) {
                            searchController.clear();
                            context.read<EmployeeBloc>().add(
                                  const EmployeeEvent
                                      .radioButttonGroupValueEvent(2),
                                );
                          },
                        ),
                        Text(
                          delegate.CsRadioMobileNumber,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xff363636),
                          ),
                        ),
                      ],
                    ),
                    kWidth20,
                    Row(
                      children: [
                        Radio(
                          value: 3,
                          groupValue: state.radioButtonValue,
                          activeColor: const Color(0xff914686),
                          onChanged: (_) {
                            searchController.clear();
                            context.read<EmployeeBloc>().add(
                                  const EmployeeEvent
                                      .radioButttonGroupValueEvent(3),
                                );
                          },
                        ),
                        Text(
                          delegate.CsRadioPanCard,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xff363636),
                          ),
                        ),
                      ],
                    ),
                    kWidth20,
                    Row(
                      children: [
                        Radio(
                          value: 4,
                          groupValue: state.radioButtonValue,
                          activeColor: const Color(0xff914686),
                          onChanged: (_) {
                            searchController.clear();
                            context.read<EmployeeBloc>().add(
                                  const EmployeeEvent
                                      .radioButttonGroupValueEvent(4),
                                );
                          },
                        ),
                        Text(
                          delegate.CsRadioDocumentNo,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xff363636),
                          ),
                        ),
                      ],
                    ),
                    kWidth20,
                  ],
                ),
              );
      },
    );
  }
}
