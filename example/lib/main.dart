/*
Name: Akshath Jain
Date: 3/18/19
Purpose: defines the package: grouped_buttons
Copyright: © 2019, Akshath Jain. All rights reserved.
Licensing: More information can be found here: https://github.com/akshathjain/sliding_up_panel/blob/master/LICENSE
*/

import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

void main() => runApp(SlidingUpPanelExample());

class SlidingUpPanelExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SlidingUpPanelExample"),
      ),
      drawer: Drawer(),
      body: _body(),
    );
  }

  Widget _body(){
    return SlidingUpPanel(
      back: Center(child: RaisedButton(child: Text("Push"), onPressed: (){},),),
      frontCollapsed: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0)),
        ),
      ),
      frontFull: _full(),
      panelHeightOpen: 500.0,//MediaQuery.of(context).size.height,
    );
  }

  Widget _full(){
    return Container(
      padding: const EdgeInsets.all(24.0),
      height: 500.0,
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              Text("This is a title"),
              SizedBox(height: 50.0,),
              Text("This is something else"),
              SizedBox(height: 50.0,),
              RaisedButton(
                child: Text("Button"),
                color: Colors.green,
                onPressed: (){},
              ),
              SizedBox(height: 50.0,),
              Text("Another Piece of Text"),
            ],
          ),
        )
      ),
    );
  }
}
