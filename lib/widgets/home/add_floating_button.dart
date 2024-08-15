import 'package:flutter/material.dart';

class AddFloatingButton extends StatelessWidget {
  const AddFloatingButton({super.key});

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
