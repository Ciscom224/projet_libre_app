import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(""),
          Text(""),
          Text(""),
          Text(""),
          Text(""),
          Text(""),
          Text(""),
          Text(""),
          Text(
            "Contact",
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 16.0),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Name",
                    border: InputBorder.none,
                  ),
                ),
                SizedBox(height: 8.0),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Email",
                    border: InputBorder.none,
                  ),
                ),
                SizedBox(height: 8.0),
                TextField(
                  maxLines: 7,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Message",
                    border: InputBorder.none,
                  ),
                ),
                SizedBox(height: 8.0),
                MaterialButton(
                  height: 60.0,
                  minWidth: double.infinity,
                  color: Color(0xff333333),
                  onPressed: () {},
                  child: Text("Submit",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
