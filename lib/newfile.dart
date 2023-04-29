import 'package:flutter/material.dart';

class DatePickerDemo extends StatefulWidget {
  @override
  _DatePickerDemoState createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  List<DateTime> _selectedDates = [];
  int _dateTimePickerCount = 0;
  void _addDateTimePicker() {
    setState(() {
      _dateTimePickerCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Picker Demo'),
      ),
      body: ListView.builder(
        itemCount: _dateTimePickerCount,
        itemBuilder: (context, index) {
          return _buildDateTimePicker(index);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addDateTimePicker,
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildSelectedDates() {
    if (_selectedDates.isEmpty) {
      return Text('No dates selected');
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Selected Dates:'),
          SizedBox(height: 8),
          Column(
            children: _selectedDates.map((date) {
              return Text(date.toString());
            }).toList(),
          ),
        ],
      );
    }
  }

  Widget _buildDateTimePicker(int index) {
    return Row(
      children: [
        Text('Date ${index + 1}:'),
        SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () async {
              final DateTime? picked = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2020),
                lastDate: DateTime(2025),
              );
              if (picked != null) {
                setState(() {
                  _selectedDates.add(picked);
                });
              }
            },
            child: Text(_selectedDates.length > index
                ? _selectedDates[index].toString()
                : 'Tap to select'),
          ),
        ),
      ],
    );
  }
}
