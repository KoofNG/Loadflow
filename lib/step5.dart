import 'package:flutter/material.dart';
import 'step6.dart';

class StepFive extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0.0,
          title: Text(
            "Iterations",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            FlatButton(
                child: Text(
                  "NEXT",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return new StepSix();
                  }));
                })
          ]),
      body: Container(
          color: Colors.blue,
          child: ListView(children: [
            Text(
              "First Iteration",
              style: TextStyle(color: Colors.white, fontSize: 15.0),
              textAlign: TextAlign.center,
            ),
            new Divider(),
            new Center(
                child: new Text(
                    "\nV2  =  1.171V\nV3  =  1.152V\nV4  =  1.189V",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700))),
            new Divider(),
            Text(
              "Second Iteration",
              style: TextStyle(color: Colors.white, fontSize: 15.0),
              textAlign: TextAlign.center,
            ),
            new Divider(),
            new Center(
                child: new Text(
                    "\nV2  =  1.123V\nV3  =  1.103V\nV4  =  1.141V",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700))),
            new Divider(),
            Text(
              "3rd Iteration",
              style: TextStyle(color: Colors.white, fontSize: 15.0),
              textAlign: TextAlign.center,
            ),
            new Divider(),
            new Center(
                child: new Text(
                    "\nV2  =  1.095V\nV3  =  1.023V\nV4  =  1.035V",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700))),
            new Divider(),
            Text(
              "Fourth Iteration",
              style: TextStyle(color: Colors.white, fontSize: 15.0),
              textAlign: TextAlign.center,
            ),
            new Divider(),
            new Center(
                child: new Text(
                    "\nV2  =  1.039V\nV3  =  1.018V\nV4  =  1.030V",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700))),
            new Divider(),
            Text(
              "Fifth Iteration",
              style: TextStyle(color: Colors.white, fontSize: 15.0),
              textAlign: TextAlign.center,
            ),
            new Divider(),
            new Center(
                child: new Text(
                    "\nV2  =  1.019V\nV3  =  1.012V\nV4  =  1.027V",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700))),
            new Divider(),
          ])),
    );
  }
}
