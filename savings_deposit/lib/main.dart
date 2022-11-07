import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:injectable/injectable.dart';
import 'package:savings_deposit/injection.dart';
import 'presentation/app_widget.dart';

Future<void> main() async {
  debugPaintSizeEnabled = false;
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);
  runApp(AppWidget());
}
