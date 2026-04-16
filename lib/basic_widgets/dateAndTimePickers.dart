import 'dart:async';
import 'package:flutter/material.dart';

class MyDatePickerWidget extends StatefulWidget {
  const MyDatePickerWidget({Key? key}) : super(key: key);

  @override
  State<MyDatePickerWidget> createState() => _MyDatePickerWidgetState();
}

class _MyDatePickerWidgetState extends State<MyDatePickerWidget> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "${selectedDate.toLocal()}".split(' ')[0],
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            _selectDate(context);
            // ignore: avoid_print
            print(selectedDate.day +
                selectedDate.month +
                selectedDate.year);
          },
          child: const Text('Pilih Tanggal'),
        ),
      ],
    );
  }
}