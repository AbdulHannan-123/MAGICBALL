import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("ASK ME ANYTHING"),
        backgroundColor: Colors.grey[850],
      ),
      
      body: challange() ,
    ),
    
)
    );


class challange extends StatefulWidget {

  @override
  State<challange> createState() => _challangeState();
}

class _challangeState extends State<challange> {
  var inc = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Row(
      children: [
        Expanded(
          flex: 1,
          child: FlatButton(
            onPressed: (){
              setState(() {
                inc=Random().nextInt(5);
                inc++;
                
              });
            },
            child: Image(
              image:AssetImage('images/ball$inc.png'),
              height:200.0,
            ),
          ),
        ),],),);
  }
}


