import 'package:TripApp/screen/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TripApp',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Loginscreen(),
    );
  }
}

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key key}) : super(key: key);

  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
 
  @override
  void initState() {
   
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Username'),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(),
                    shape: BoxShape.rectangle),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'asdsad', border: InputBorder.none),
                ),
              ),
              Text('Password'),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(),
                    shape: BoxShape.rectangle),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'asdsad', border: InputBorder.none),
                ),
              ),
              Container(
                width: 300,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => (Homepage()),
                        ));
                  },
                  child: Text("Login"),
                ),
              ),
              Container(
                width: 300,
                child: RaisedButton(
                  onPressed: null,
                  child: Text("Login with Facebook"),
                ),
              ),
              Container(
                width: 300,
                child: RaisedButton(
                  onPressed: null,
                  child: Text("Login with LINE"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
