import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker19552011139 extends StatefulWidget {
  const DatePicker19552011139({Key? key}) : super (key : key);

  @override
  _DatePicker19552011139State createState()=> _DatePicker19552011139State();
}

class _DatePicker19552011139State extends State<DatePicker19552011139> {
  DateTime _selectedDate = DateTime.now();
  final DateFormat _dateFormat = DateFormat('dd-MM-yyyy');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('Date Picker'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.red,
                ),
                onPressed: () {
                  _getDate(context);
                },
              ), //ElevatedButton
              SizedBox(
                height: 15,
              ), // Sized Box
              Text('Date value: ' + _dateFormat.format(_selectedDate),
                style: TextStyle(color: Colors.white),
              ),
            ],
          )
      ),
    );
  }

_getDate(contxt) async{
    final _datePick = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: _selectedDate.subtract(Duration(days: 30)
      ),
      lastDate: DateTime(_selectedDate.year + 1),
    );

    if(_datePick !=null){
      setState(() {
        _selectedDate = _datePick;
      });
    }
}
}