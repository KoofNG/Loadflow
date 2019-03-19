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

    for (int i = 0; i < widget.busNo; i++) {
      // if (i == widget.busNo) {
      //   impedanceNames.add('Z' + i.toString() + ',' + (1).toString());
      // } else
      impedanceNames.add('Z' + i.toString() + ',' + (i + 1).toString());
      if ((i + 1) == widget.busNo) {
        for (var j = 0; j < widget.busNo - 1; j++) {
          impedanceNames.add('Z' + j.toString() + ',' + (j + 2).toString());
          if ((j + 2) == widget.busNo) {
            for (var i = 0; i < widget.busNo - 2; i++) {
              impedanceNames.add('Z' + i.toString() + ',' + (i + 3).toString());
              if ((i + 3) == widget.busNo) {
                for (var q = 0; q < widget.busNo - 3; q++) {
                  impedanceNames
                      .add('Z' + q.toString() + ',' + (q + 4).toString());
                  if ((q + 4) == widget.busNo) {
                    for (var s = 0; s < widget.busNo - 4; s++) {
                      impedanceNames
                          .add('Z' + s.toString() + ',' + (s + 5).toString());
                      if ((s + 5) == widget.busNo) {
                        for (var e = 0; e < widget.busNo - 5; e++) {
                          impedanceNames.add(
                              'Z' + e.toString() + ',' + (e + 6).toString());
                          if ((e + 6) == widget.busNo) {
                            for (var v = 0; v < widget.busNo - 6; v++) {
                              impedanceNames.add('Z' +
                                  v.toString() +
                                  ',' +
                                  (v + 7).toString());
                              if ((v + 7) == widget.busNo) {
                                for (var v = 0; v < widget.busNo - 7; v++) {
                                  impedanceNames.add('Z' +
                                      v.toString() +
                                      ',' +
                                      (v + 8).toString());
                                  if ((v + 8) == widget.busNo) {
                                    for (var v = 0; v < widget.busNo - 8; v++) {
                                      impedanceNames.add('Z' +
                                          v.toString() +
                                          ',' +
                                          (v + 9).toString());
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    // print(impedanceNames);

    // Controller for number of inputs required
    for (int i = 1; i < impedanceNames.length + 1; i++) {
      textControlRl['Z' + i.toString()] = TextEditingController();
      textControlIm['Z' + i.toString()] = TextEditingController();
    }

    void valid() {
      for (int i = 1; i < impedanceNames.length + 1; i++) {
        double _rl = double.parse(textControlRl['Z' + i.toString()].text);
        double _im = double.parse(textControlIm['Z' + i.toString()].text);
        impedances.add(_rl);
        impedancesIm.add(_im);
      }
      print(impedances);
      print(impedancesIm);
      // print(impedanceNames);

      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) {
          return StepThree(
            busNo: widget.busNo,
            // busNo: impedanceNames.length,
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
            // onPressed: ()=> null,
            child: Text(
              "NEXT",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: valid,
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        //color: Colors.blue,
        child: new Center(
          child: new ListView.builder(
            itemCount: impedanceNames.length,
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
