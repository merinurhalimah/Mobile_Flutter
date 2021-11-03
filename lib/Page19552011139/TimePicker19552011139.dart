import 'package:flutter/material.dart';

class TimePicker19552011139 extends StatefulWidget{
  const TimePicker19552011139({Key? key}) : super(key: key);

  @override
  _TimePicker19552011139State createState() => _TimePicker19552011139State();
}

class _TimePicker19552011139State extends State<TimePicker19552011139>{
  TimeOfDay _selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Time Picker'),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.green,
              ),
              onPressed: (){
                _getTime(context);
              },
            ),
            SizedBox(
              height: 15,
            ),
            Text('Time Value :' + _selectedTime.format(context),
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  _getTime(context) async{
    final _timePick = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
      builder: (context, child){
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              alwaysUse24HourFormat: true,
            ),
            child: child!,
        );
      });

    if(_timePick != null){
      setState(() {
        _selectedTime= _timePick;
      });
    }
  }
}