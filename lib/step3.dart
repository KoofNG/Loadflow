import 'package:flutter/material.dart';
import 'step4.dart';

class StepThree extends StatefulWidget {
  StepThree({this.busNo, this.real, this.im, this.impedanceNames});
  final busNo;
  final List<double> real;
  final List<double> im;
  final List<String> impedanceNames;

  @override
  _StepThree createState() => _StepThree();
}

class _StepThree extends State<StepThree> {
  Map R = {};
  Map R_Print = {};

  @override
  Widget build(BuildContext context) {
    List<double> realAdm = [];
    List<double> imAdm = [];
    List<String> impedanceNames = [];
    print(widget.busNo);
    for (var i = 0; i < widget.busNo; i++) {
      List C = [];
      for (var j = 0; j < widget.busNo; j++) {
        C.add('cell_${i}_$j');
        // C.add(0);
      }
      R[i.toString()] = C;
      R_Print[i.toString()] = C;
    }
    print(R);

    for (int i = 0; i < widget.busNo; i++) {
      var _r = (1 / widget.real[i]);
      var _imm = (1 / widget.im[i]);
      realAdm.insert(i, _r);
      imAdm.insert(i, _imm);

      if (i + 1 == widget.busNo) {
        impedanceNames.add('y' + i.toString() + ',' + (0).toString());
        R[i.toString()][0] = '$_r+$_imm';
        R_Print[i.toString()][0] = '$_r + ${_imm}j';
      } else {
        impedanceNames.add('y' + i.toString() + ',' + (i + 1).toString());
        R[i.toString()][i + 1] = '$_r+$_imm';
        R_Print[i.toString()][i + 1] = '$_r + ${_imm}j';
      }
    }
    print(realAdm);
    print(imAdm);

    // R.forEach((k,v) =>
    //   print('${k},${v}');   
    //   for (var i = 0; i < count; i++) {
        
    //   }   
    // );

    R.forEach((k,v) {
      // print('${k},${v}');
      print(v);
      // v.forEach((element) {
      //   if (element != 0){
      //     print(element);
      //   }
      // });
    });

    

    // print(R);
    // print(R_Print);
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        title: Text(
          "Line Admittance",
          style: TextStyle(color: Colors.white),
        ),
        //centerTitle: true,
        actions: [
          FlatButton(
            child: Text(
              "NEXT",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return new StepFour();
                  },
                ),
              );
            },
          )
        ],
      ),
      body: new Container(
        // color: Colors.blue,
        child: Center(
          child: ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            itemCount: widget.busNo,
            itemBuilder: (context, index) {
              return new Text(
                impedanceNames[index] +
                    " = " +
                    realAdm[index].toStringAsFixed(2) +
                    " + " +
                    imAdm[index].toStringAsFixed(2) +
                    "j",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              );
            },
          ),
        ),
      ),
    );
  }
}
