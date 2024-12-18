import 'package:flutter/material.dart';

class DateTimeView extends StatefulWidget {
  const DateTimeView({super.key});

  @override
  State<DateTimeView> createState() => _DateTimeViewState();
}

class _DateTimeViewState extends State<DateTimeView> {
  TimeOfDay? time = const TimeOfDay(hour: 16, minute: 46);
  DateTime? date = DateTime(2024, 12, 18);

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: time!,
    );
    if (newTime != null) {
      setState(() {
        time = newTime;
      });
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? newDate = await showDatePicker(
      context: context,
      initialDate: date!,
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
    );
    if (newDate != null) {
      setState(() {
        date = newDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date & Time Picker'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Time Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Time: ${time!.hour.toString().padLeft(2, '0')}:${time!.minute.toString().padLeft(2, '0')}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                      width: 20), // Add spacing between Text and Button
                  ElevatedButton(
                    onPressed: () => _selectTime(context),
                    child: const Text('Change Time'),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              // Date Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Date: ${date!.day.toString().padLeft(2, '0')}/${date!.month.toString().padLeft(2, '0')}/${date!.year}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                      width: 20), // Add spacing between Text and Button
                  ElevatedButton(
                    onPressed: () => _selectDate(context),
                    child: const Text('Change Date'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
