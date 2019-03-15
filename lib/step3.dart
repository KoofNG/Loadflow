import 'package:flutter/material.dart';
import 'step4.dart';
class StepThree extends StatelessWidget {
  StepThree({this.busNo, this.real, this.im});
  final List<double> real;
  final int busNo;
  final List<double> im;
  List<List> matrix = [];
  List<double> realAdm = [];
  List<double> imAdm = [];
  List<String> labels = ['Y1,2', 'Y2,3', 'Y3,4', 'Y4,1'];
  Widget build(BuildContext context) {
    for (int i = 0; i < real.length; i++) {
      realAdm.add(1 / real[i]);
      imAdm.add(1 / im[i]);
    }
    print(realAdm);
    print(imAdm);
    return new Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0.0,
          title: Text("Line Admittance", style: TextStyle(color:Colors.white),),
          centerTitle: true,
          actions: [
            FlatButton(
                child: Text(
                  "NEXT",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return new StepFour();
                  }));
                })
          ]),
      body: new Container(
        color: Colors.blue,
        child: Center(child: ListView.builder(
          itemCount: busNo,
          itemBuilder: (context, index) {
            return new Text(
              
              labels[index]+ "    =  "+realAdm[index].toStringAsFixed(2) + " + " + imAdm[index].toStringAsFixed(2) + "j",
              style: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            );
          },
        ),)
      ),
    );
  }
}
