import 'package:flutter/material.dart';
import 'package:widget_sample/stateful_sample_widget.dart';
import 'package:widget_sample/stateless_sample_widget.dart';

import 'rabbit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.2
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StatefulSampleWidget(
          title: '구멍이 있는 박스로 실험하는자',
          rabbit: Rabbit(name: "토끼2", state: RabbitState.sleep)),
    );
  }
}
