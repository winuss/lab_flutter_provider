import 'package:flutter/material.dart';
import 'package:lab_provider/src/provider/count_provider.dart';
import 'package:lab_provider/src/ui/count_home_widget.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    CountProvider countProvider = Provider.of<CountProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Provider Sample')),
      body: const CounterHomeWidget(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              countProvider.add();
            },
          ),
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: () {
              countProvider.remove();
            },
          ),
        ],
      ),
    );
  }
}
