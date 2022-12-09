import 'dart:async';

import 'package:flutter/material.dart';
import 'package:widget_sample/rabbit.dart';

class StatefulSampleWidget extends StatefulWidget {
  String title = '';
  Rabbit? rabbit;

  StatefulSampleWidget({this.title = '', this.rabbit});

  @override
  State<StatefulWidget> createState() => _StatefulSampleWidgetState();
}

// 주석테스트
class _StatefulSampleWidgetState extends State<StatefulSampleWidget> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(milliseconds: 500), (timer) {
      int index = timer.tick % 4;

      setState(() {
        switch (index) {
          case 0:
            widget.rabbit!.updateState(RabbitState.sleep);
            break;
          case 1:
            widget.rabbit!.updateState(RabbitState.walk);
            break;
          case 2:
            widget.rabbit!.updateState(RabbitState.run);
            break;
          case 3:
            widget.rabbit!.updateState(RabbitState.eat);
            break;
          case 4:
            widget.rabbit!.updateState(RabbitState.none);
            break;
        }
        print(widget.rabbit!.state);
      });
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Text(widget.rabbit!.state.toString(),
            style: const TextStyle(fontSize: 20)),
      ),
    );
  }
}
