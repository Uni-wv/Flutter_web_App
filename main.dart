import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

main() {
  runApp(app());
}

mycal() async {
  var url = "http://192.168.1.2/cgi-bin/second.py";
  var r = await http.get(url);
  var sc = r.body;
  print(sc);
}

mydata() async {
  var url = "http://192.168.1.2/cgi-bin/first.py";
  var r = await http.get(url);
  var sc = r.body;
  print(sc);
}

about() async {
  var url = "http://192.168.1.2/cgi-bin/about.py";
  var r = await http.get(url);
  var sc = r.body;
  print(sc);
}

good() {
  Fluttertoast.showToast(
      msg: "Good",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0);
}

like() {
  Fluttertoast.showToast(
      msg: "Liked",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}

mybody() {
  return Row(
    children: <Widget>[
      RaisedButton(
        onPressed: mydata,
        child: Text("date"),
      ),
      RaisedButton(
        onPressed: mycal,
        child: Text("Calender"),
      ),
      RaisedButton(
        onPressed: about,
        child: Text("About"),
      ),
      InkWell(
        onTap: good,
        // onDoubleTap: like,
        child: RaisedButton(
          onPressed: good,
          child: Text("Feedback"),
        ),
      ),
    ],
  );
}

class app extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Learn Linux"),
          backgroundColor: Colors.teal,
        ),
        body: mybody(),
      ),
    );
  }
}
