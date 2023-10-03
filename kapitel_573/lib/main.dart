import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'app.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox<String>('myUserBox');

  runApp(const MyApp());
}

