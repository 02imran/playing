import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod/customized_widget/size_config.dart';
import 'package:river_pod/main_screen/Todo/todo.dart';
import 'package:river_pod/main_screen/bottom_bar/bottom_bar_screen.dart';
import 'package:river_pod/main_screen/counter/counter_app.dart';
import 'package:river_pod/main_screen/login_screen/login_screen.dart';
import 'package:river_pod/main_screen/post_screen/post/post_screen.dart';
import 'package:river_pod/main_screen/preformance/preformance_app.dart';

import 'main_screen/Location/location_service.dart';

final counterProvider = StateProvider<int>((ref) {
  return 0;
});

void main() {
  
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const PreformanceApp(),
    );
  }
}
