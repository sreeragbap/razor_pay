import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjection(String env) async {
  getIt.registerSingleton<Razorpay>(Razorpay());
  $initGetIt(getIt, environment: env);
}
