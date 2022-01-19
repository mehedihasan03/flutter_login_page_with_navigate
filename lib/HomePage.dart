
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
 _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Page"
        ),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            color:  Colors.orange,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: FlatButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: const Text(
              "Welcome",
              style: TextStyle(
                color: Colors.red,
                fontSize: 35,
              ),
            ),
          ),
        ),
      ),
    );
  }

}