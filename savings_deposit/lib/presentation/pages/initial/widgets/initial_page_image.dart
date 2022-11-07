import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_deposit/application/language/language_bloc.dart';
import 'package:savings_deposit/presentation/responsive/responsive.dart';

import '../../../../core/constants.dart';
import '../../../../generated/l10n.dart';

class InitialScreenImage extends StatelessWidget {
  const InitialScreenImage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    final delegate = S.of(context);
    return Column(
      children: [
        SizedBox(
          child: FittedBox(
            fit: BoxFit.fill,
            child: Responsive.isMobile(context)
                ? Image.asset("assets/images/splash_image1.png")
                : Image.asset("assets/images/splash_image.png"),
          ),
          width: Responsive.isMobile(context) || Responsive.isTablet(context)
              ? double.infinity
              : size.width / 2,
          height: size.height / 3,
        ),
        Row(
          children: [
            TextButton(
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
                            delegate.changeLanguage,
                            style: GoogleFonts.poppins(
                              fontSize: 28,
                              color: const Color.fromARGB(255, 121, 4, 96),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          kHeight30,
                          TextButton(
                            onPressed: () {
                              context.read<LanguageBloc>().add(
                                    const LanguageEvent.changetomalayalam(),
                                  );
                            },
                            child: Text(delegate.malayalam),
                          ),
                          TextButton(
                            onPressed: () {
                              context.read<LanguageBloc>().add(
                                    const LanguageEvent.changetoenglish(),
                                  );
                            },
                            child: Text(delegate.english),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: const Text("Language"),
            )
          ],
        ),
      ],
    );
  }
}
