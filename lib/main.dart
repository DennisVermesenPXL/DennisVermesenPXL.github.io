import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:web_portfolio/app.dart';

void main() {
  usePathUrlStrategy();

  runApp(App());
}
