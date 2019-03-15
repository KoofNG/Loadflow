import 'package:flutter/material.dart';
import 'step7.dart';
class StepSix extends StatelessWidget{

  Widget build(BuildContext context){
      return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0.0,
          title: Text("Slack Power", style: TextStyle(color:Colors.white),),
          centerTitle: true,
          actions: [
            FlatButton(
                child: Text(
                  "NEXT",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return new StepSeven();
                  }));
                })
          ]),
        body: Container(
          color: Colors.blue,
          child: new Center(
            child: new Text("P  =  124.3W\n\nQ  =  112.1W\n", style: TextStyle(color:Colors.white,fontSize: 24.0,fontWeight: FontWeight.w700))
          ),
        ),
      );
  }
}