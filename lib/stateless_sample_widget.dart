import 'dart:async';

import 'package:flutter/material.dart';
import 'package:widget_sample/rabbit.dart';

class StatelessSampleWidget extends StatelessWidget {
  String title = '';
  Rabbit? rabbit;
  StatelessSampleWidget({super.key, this.title = "", this.rabbit}) {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      int index = timer.tick % 4;

      switch (index) {
        case 0:
          rabbit!.updateState(RabbitState.sleep);
          break;
        case 1:
          rabbit!.updateState(RabbitState.walk);
          break;
        case 2:
          rabbit!.updateState(RabbitState.run);
          break;
        case 3:
          rabbit!.updateState(RabbitState.eat);
          break;
      }

      print(rabbit!.state);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text(rabbit!.state.toString(),
            style: const TextStyle(fontSize: 20)),
      ),
    );
  }
}
