import 'package:flutter/material.dart';
import 'step3.dart';

class StepTwo extends StatelessWidget {
  StepTwo({this.busNo});
  final int busNo;
  Widget build(BuildContext context) {
    List<double> impedances = [];
    List<double> impedancesIm = [];
    List<String> impedanceNames = [];
    for (int i = 1; i < busNo + 1; i++) {
      if (i == busNo) {
        impedanceNames.add('Z' + i.toString() + ',' + (1).toString());
      } else
        impedanceNames.add('Z' + i.toString() + ',' + (i + 1).toString());
      print(impedanceNames);
    }

    void valid() {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return new StepThree(
              busNo: 4,
              real: [2.1,0.5,1.1,3.3],
              im: [0.1,0.4,0.5,2.0],
            );
          }),
        );
      // if (impedances.length == busNo && impedancesIm.length == busNo) {
      //   print("Hello");
      //   Navigator.of(context).push(
      //     MaterialPageRoute(builder: (context) {
      //       return new StepThree(
      //         busNo: busNo,
      //         real: impedances,
      //         im: impedancesIm,
      //       );
      //     }),
      //   );
      // } else {
      //   print(impedances.length);
      //   print(impedancesIm.length);
      // }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        centerTitle: true,
        title: Text("Line Impedances", style: TextStyle(color:Colors.white),),
        actions: [
          FlatButton(
              child: Text(
                "NEXT",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: valid)
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        color: Colors.blue,
        child: new Center(
            child: new ListView.builder(
          itemCount: busNo,
          itemBuilder: (context, index) {
            return Container(
                constraints: BoxConstraints(maxWidth: 250.0),
                width: MediaQuery.of(context).size.width * 0.8,
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.numberWithOptions(),
                          onChanged: (val) {
                            double _val = double.parse(val);
                            impedances.insert(index, _val);

                            print(impedances);
                          },
                          decoration: InputDecoration(
                              labelText: impedanceNames[index] + " Real"),
                        ),
                      ),
                      Expanded(
                          child: TextField(
                        keyboardType: TextInputType.numberWithOptions(),
                        onChanged: (val) {
                          double _val = double.parse(val);
                          impedancesIm.insert(index, _val);

                          print(impedancesIm);
                        },
                        decoration: InputDecoration(
                            labelText: impedanceNames[index] + " Imaginary"),
                      ))
                    ]));
          },
        )),
      ),
    );
  }
}
