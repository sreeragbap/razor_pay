import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/application/phone_number_verification/phone_number_verification_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/generated/l10n.dart';
import 'package:savings_deposit/presentation/pages/initial/widgets/initial_page_image.dart';
import 'package:savings_deposit/presentation/router/app_router.gr.dart';

import '../../responsive/responsive.dart';
import '../../widgets/initial_frame/initial_frame_widget.dart';
import 'widgets/initial_page_button.dart';
import 'widgets/initial_page_logo.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final delegate = S.of(context);
    final size = MediaQuery.of(context).size;
    // ignore: unused_local_variable
    List<Widget> initialScreensWidgets = [
      InitialScreenImage(size: size),
      kHeight5,
      LogoAndLabel(
        imageUrl: "assets/images/macom-login.png",
      ),
      Center(
        child: InitialScreenButtons(
          press: () {
            context.router.push(const AppRoutingRoute());

            //   context.read<LoginBloc>().add(const LoginEvent.restAll());
          },
          title: delegate.initialPageLogin,
        ),
      ),
      Center(
        child: InitialScreenButtons(
          press: () {
            context
                .read<PhoneNumberVerificationBloc>()
                .add(const PhoneNumberVerificationEvent.disableSendOtpButton());
            context.router.push(const RegisterPhoneNumberVerificationRoute());

            context
                .read<LoginBloc>()
                .add(const LoginEvent.getdevicetokenUniqueID());
          },
          title: delegate.initialPageRegister,
        ),
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFE2EDF3),
      body: Responsive(
        desktop: Center(
          child: desktopInitialPage(initialScreensWidgets),
        ),
        tablet: null,
        mobile: mobileInitialPage(initialScreensWidgets),
      ),
    );
  }

  InitialFrameWidget desktopInitialPage(List<Widget> initialScreensWidgets) {
    return InitialFrameWidget(
      child: ListView.separated(
        separatorBuilder: (BuildContext ctx, int index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemCount: initialScreensWidgets.length,
        itemBuilder: (BuildContext ctx, int index) {
          return initialScreensWidgets[index];
        },
      ),
    );
  }

  mobileInitialPage(List<Widget> initialScreensWidgets) {
    return ListView.separated(
      separatorBuilder: (BuildContext ctx, int index) {
        return const SizedBox(
          height: 20,
        );
      },
      itemCount: initialScreensWidgets.length,
      itemBuilder: (BuildContext ctx, int index) {
        return initialScreensWidgets[index];
      },
    );
  }
}
