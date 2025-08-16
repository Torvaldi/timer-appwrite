import 'package:timer_appwrite/app.dart';
import 'package:timer_appwrite/utils/app_initializer.dart';
import 'package:flutter/material.dart';

void main() async {
  await AppInitializer.initialize();
  runApp(const TimerApp());
}
