import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weatherapp/BLoC/WeatherBLoC.dart';
class AddLocation extends StatefulWidget {
  @override

  _AddLocationState createState() => _AddLocationState();
}

class _AddLocationState extends State<AddLocation> {
  var latController = TextEditingController();
  var longController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: weatherBloc.getLat,
              decoration: InputDecoration(
                  hintText: 'Add Latitude'
              ),
              controller: latController,
            ),
            TextField(
              onChanged: weatherBloc.getLong,
              decoration: InputDecoration(
                  hintText: 'Add Longitude'
              ),

              controller: longController,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    weatherBloc.addLoc();
                  },
                  child: Text('Add'),
                )
              ],)

          ],
        ),
      ),
    );
  }
}