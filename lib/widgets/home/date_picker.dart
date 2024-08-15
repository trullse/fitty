import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime _selectedDate = DateTime.now();
  final DateFormat _formatter = DateFormat('dd MMMM yyyy');

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _getRelativeDateText(),
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const Icon(Icons.more_vert),
        ],
      ),
      onTap: () => _showDatePicker(context),
    );
  }

  String _getRelativeDateText() {
    final daysDifference = DateTime.now().difference(_selectedDate).inDays;
    if (daysDifference == 0) {
      return 'Today';
    } else if (daysDifference == 1) {
      return 'Yesterday';
    } else {
      return _formatter.format(_selectedDate);
    }
  }

  Future<void> _showDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime.now(), // Restrict to today and past
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }
}
