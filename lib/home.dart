import 'package:flutter/material.dart';
import 'step1.dart';
class HomePage extends StatelessWidget{

  Widget build(BuildContext context){
      return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Load Flow calculator", style: TextStyle(color: Colors.white)
          
          ,)
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              FloatingActionButton(
                onPressed:(){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context){
                        return new StepOne();
                      }
                    )
                  );
                },
                child: Icon(Icons.play_for_work)
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Text("Click to Start", style: TextStyle(fontSize: 18.0),)
            ]
          )
        ),
      );
  }
}