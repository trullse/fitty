import 'package:fitty/widgets/home/date_picker.dart';
import 'package:fitty/widgets/home/food_list.dart';
import 'package:fitty/widgets/home/main_diagram.dart';
import 'package:flutter/material.dart';

import '../widgets/home/add_floating_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          DatePicker(),
          SizedBox(height: 20),
          MainDiagram(),
          SizedBox(height: 20),
          FoodList(),
        ],
      ),
      floatingActionButton: const AddFloatingButton(),
    );
  }
}
