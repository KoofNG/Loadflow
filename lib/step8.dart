import 'package:flutter/material.dart';

class FinalPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0.0,
          title: Text(
            " Power flow Solution\nGauss-Siedel Method ",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: []),
      body: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(16.0),
        width: MediaQuery.of(context).size.width,
        child: ListView(children: [
          new Divider(color: Colors.white),
          Text(
            "Voltage Magnitude",
            style: TextStyle(color: Colors.white),
          ),
          new Divider(color: Colors.white),
          Text(
            "Bus 1                       1.000",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          new Divider(color: Colors.white),
          Text(
            "Bus 2                       1.019",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          new Divider(color: Colors.white),
          Text(
            "Bus 3                       1.012",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          new Divider(color: Colors.white),
          Text(
            "Bus 4                       1.027",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          new Divider(),
          new Padding(padding: EdgeInsets.all(24.0)),
          new Divider(color: Colors.white),
          Text(
            "Angle degree",
            style: TextStyle(color: Colors.white),
          ),
          new Divider(color: Colors.white),
          Text(
            "Bus 1                       0.000",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          new Divider(color: Colors.white),
          Text(
            "Bus 2                       -1.328",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          new Divider(color: Colors.white),
          Text(
            "Bus 3                       -2.454",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          new Divider(color: Colors.white),
          Text(
            "Bus 4                       -3.248",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          new Divider(),
          new Divider(),
          new Padding(padding: EdgeInsets.all(24.0)),
          new Divider(color: Colors.white),
          Text(
            "Load MW",
            style: TextStyle(color: Colors.white),
          ),
          new Divider(color: Colors.white),
          Text(
            "Bus 1                       0.000",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          new Divider(color: Colors.white),
          Text(
            "Bus 2                       10.000",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          new Divider(color: Colors.white),
          Text(
            "Bus 3                       25.000",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          new Divider(color: Colors.white),
          Text(
            "Bus 4                       10.000",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          new Divider(),
          new Divider(),
          new Padding(padding: EdgeInsets.all(24.0)),
          new Divider(color: Colors.white),
          Text(
            "Load MVar",
            style: TextStyle(color: Colors.white),
          ),
          new Divider(color: Colors.white),
          Text(
            "Bus 1                       0.000",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          new Divider(color: Colors.white),
          Text(
            "Bus 2                       5.000",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          new Divider(color: Colors.white),
          Text(
            "Bus 3                       15.000",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          new Divider(color: Colors.white),
          Text(
            "Bus 4                       40.000",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          new Divider(),
          new Divider(),
          new Padding(padding: EdgeInsets.all(24.0)),
          new Divider(color: Colors.white),
          Text(
            "Generation MW",
            style: TextStyle(color: Colors.white),
          ),
          new Divider(color: Colors.white),
          Text(
            "Bus 1                       150.553",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          new Divider(color: Colors.white),
          Text(
            "Bus 2                       0.000",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          new Divider(color: Colors.white),
          Text(
            "Bus 3                       0.000",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          new Divider(color: Colors.white),
          Text(
            "Bus 4                       0.000",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          new Divider(),
          new Divider(),
          new Padding(padding: EdgeInsets.all(24.0)),
          new Divider(color: Colors.white),
          Text(
            "Generation MVar",
            style: TextStyle(color: Colors.white),
          ),
          new Divider(color: Colors.white),
          Text(
            "Bus 1                       -19.517",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          new Divider(color: Colors.white),
          Text(
            "Bus 2                       0.000",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          new Divider(color: Colors.white),
          Text(
            "Bus 3                       0.000",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          new Divider(color: Colors.white),
          Text(
            "Bus 4                       0.000",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          new Divider()
        ]),
      ),
    );
  }
}
