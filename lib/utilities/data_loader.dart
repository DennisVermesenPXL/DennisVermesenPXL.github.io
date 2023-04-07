import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DataLoader {
  static Map<String, dynamic> _jsonData = {};

  static loadJson(String name) async {
    final jsonString = await rootBundle.loadString(name);
    _jsonData = json.decode(jsonString) as Map<String, dynamic>;
  }

  static dynamic getData(String name) {
    try {
      return _jsonData[name];
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  static List<dynamic> getDataList(String name) {
    try {
      return List<dynamic>.from(_jsonData[name]);
    } catch (error) {
      debugPrint(error.toString());
      return [];
    }
  }

  static String getText(String name) {
    try {
      return _jsonData[name] as String;
    } catch (error) {
      debugPrint(error.toString());
      return name;
    }
  }

  static List<String> getTextList(String name) {
    try {
      return List<String>.from(_jsonData[name]);
    } catch (error) {
      debugPrint(error.toString());
      return [];
    }
  }
}
