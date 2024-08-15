import 'package:fitty/widgets/home/date_picker.dart';
import 'package:flutter/material.dart';

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
        children: const [
          DatePicker(),
          Placeholder(),
        ],
      ),
      floatingActionButton: const _AddFloatingButton(),
    );
  }
}

class _AddFloatingButton extends StatelessWidget {
  const _AddFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => {},
      tooltip: 'Add meal',
      label: const Text('Add meal'),
      icon: const Icon(Icons.add),
    );
  }
}
