import 'package:flutter/material.dart';
import 'step3.dart';

/* This page is for filling in the number of inbox */
class StepTwo extends StatefulWidget {
  final busNo;

  StepTwo({this.busNo});

  @override
  _StepTwo createState() => _StepTwo();
}

class _StepTwo extends State<StepTwo> {
  Map<String, TextEditingController> textControlRl = {};
  Map<String, TextEditingController> textControlIm = {};

  Widget build(BuildContext context) {
    List<double> impedances = [];
    List<double> impedancesIm = [];
    List<String> impedanceNames = [];

    for (int i = 1; i < widget.busNo + 1; i++) {
      if (i == widget.busNo) {
        impedanceNames.add('Z' + i.toString() + ',' + (1).toString());
      } else
        impedanceNames.add('Z' + i.toString() + ',' + (i + 1).toString());
      //print(impedanceNames);
    }

    for (int i = 1; i < widget.busNo + 1; i++) {
      textControlRl['Z' + i.toString()] = TextEditingController();
      textControlIm['Z' + i.toString()] = TextEditingController();
    }

    void valid() {
      for (int i = 1; i < widget.busNo + 1; i++) {
        double _rl = double.parse(textControlRl['Z' + i.toString()].text);
        double _im = double.parse(textControlIm['Z' + i.toString()].text);
        impedances.add(_rl);
        impedancesIm.add(_im);
      }

      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) {
          return StepThree(
            busNo: widget.busNo,
            real: impedances,
            im: impedancesIm,
            impedanceNames: impedanceNames,
          );
        }),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        //centerTitle: true,
        title: Text(
          "Line Impedances",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          FlatButton(
              child: Text(
                "NEXT",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: valid),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        //color: Colors.blue,
        child: new Center(
          child: new ListView.builder(
            itemCount: widget.busNo,
            itemBuilder: (context, index) {
              return Container(
                constraints: BoxConstraints(maxWidth: 250.0),
                width: MediaQuery.of(context).size.width * 0.8,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: textControlRl['Z' + (index + 1).toString()],
                        keyboardType: TextInputType.numberWithOptions(),
                        decoration: InputDecoration(
                            labelText: impedanceNames[index] + " Real"),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        controller: textControlIm['Z' + (index + 1).toString()],
                        keyboardType: TextInputType.numberWithOptions(),
                        decoration: InputDecoration(
                            labelText: impedanceNames[index] + " Imaginary"),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
