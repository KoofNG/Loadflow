import 'package:flutter/material.dart';
import 'step2.dart';

class StepOne extends StatefulWidget {
  _StepOneState createState() => new _StepOneState();
}

class _StepOneState extends State<StepOne> {
  double value = 3.0;
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, elevation: 0.0, actions: [
        FlatButton(
            child: Text(
              "NEXT",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return new StepTwo(
                  busNo: value.floor(),
                );
              }));
            })
      ]),
      body: new Container(
        color: Colors.blue,
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "NO OF BUSES",
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              Slider(
                label: value.floor().toString(),
                activeColor: Colors.amberAccent,
                inactiveColor: Colors.black,
                onChanged: (val) {
                  setState(() {
                    value = val;
                  });
                },
                value: value,
                min: 3.0,
                max: 10.0,
                divisions: 7,
              ),
              Container(
                height: 50.0,
                width: 50.0,
                color: Colors.amberAccent,
                child: Center(
                    child: Text(
                  value.floor().toString(),
                  style: TextStyle(fontSize: 24.0),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
