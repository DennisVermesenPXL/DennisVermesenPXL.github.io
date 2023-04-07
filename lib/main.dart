import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:web_portfolio/app.dart';
import 'package:web_portfolio/utilities/data_loader.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DataLoader.loadJson('data/app_data.json');
  usePathUrlStrategy();
  runApp(const App());
}
