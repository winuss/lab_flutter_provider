import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/count_provider.dart';

class CounterHomeWidget extends StatelessWidget {
  const CounterHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Consumer<CountProvider>(builder: (context, value, child) {
      return Text(value.count.toString(), style: TextStyle(fontSize: 80));
    }));
  }
}
