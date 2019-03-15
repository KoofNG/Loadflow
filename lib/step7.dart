import 'package:flutter/material.dart';
import 'step8.dart';
class StepSeven extends StatelessWidget{

  Widget build(BuildContext context){
      return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0.0,
          title: Text("Load loss", style: TextStyle(color:Colors.white),),
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
                    return new FinalPage();
                  }));
                })
          ]),
        body: Container(
          color: Colors.blue,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text("P-loss-1,2 = 7.49MW", style: TextStyle(color:Colors.white,fontWeight:FontWeight.w700, fontSize: 18.0),),
              Text("P-loss-1,3 = 0.05MW", style: TextStyle(color:Colors.white,fontWeight:FontWeight.w700, fontSize: 18.0),),
              Text("P-loss-2,3 = 1.49MW", style: TextStyle(color:Colors.white,fontWeight:FontWeight.w700, fontSize: 18.0),),
              Text("P-loss-3,4 = 2.12MW", style: TextStyle(color:Colors.white,fontWeight:FontWeight.w700, fontSize: 18.0),),
              new Divider(
                height: 18.0,
                color: Colors.white,
              ),
              Text("Q-loss-1,2 = 17.22MW", style: TextStyle(color:Colors.white,fontWeight:FontWeight.w700, fontSize: 18.0),),
              Text("Q-loss-1,3 = 1.43MW", style: TextStyle(color:Colors.white,fontWeight:FontWeight.w700, fontSize: 18.0),),
              Text("Q-loss-2,3 = 5.19MW", style: TextStyle(color:Colors.white,fontWeight:FontWeight.w700, fontSize: 18.0),),
              Text("Q-loss-3,4 = 2.49MW", style: TextStyle(color:Colors.white,fontWeight:FontWeight.w700, fontSize: 18.0),),
              
            ]
          )
        ),
      );
  }
}