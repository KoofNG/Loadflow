import 'package:flutter/material.dart';
import 'step5.dart';
class StepFour extends StatelessWidget{

  Widget build(BuildContext context){
    return new  Scaffold(appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0.0,
          title: Text("Admittance Matrix", style: TextStyle(color:Colors.white),),
          centerTitle: true,
          actions: [
            FlatButton(
                child: Text(
                  "NEXT",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return new StepFive();
                  }));
                })
          ]),
          body: new Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                "1.0 + 0.1j | 0.3 + 1.0j | 0.5 + 0.45j | 1.0 + 0.1j \n\n 1.5 + 1.1j | 0.2 + 4.1j | 2.5 +  45j | 0.2 + 7.1j \n\n 2.1 + 0.1j | 1.5 + 0.1j | 1.5 + 4.45j | 1.0 + 0.1j \n\n 6.0 + 5.1j | 2.3 + 1.9j | 2.5 + 0.45j | 4.0 + 0.4j \n\n", style: TextStyle(color:Colors.white)
              )
            )
          ),
          
          );
  }
}