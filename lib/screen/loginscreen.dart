import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key key}) : super(key: key);

  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Stack(
          children: [
            Background(),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 100),
                    child: Column(
                      children: [
                        Text(
                          "JOURNEY",
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xff56C596),
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Text(
                          "travel plan in your hands",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff56C596),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 40),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Username",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Username", border: InputBorder.none),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 40),
                  Container(
                    padding: EdgeInsets.only(left: 40),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Password",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Password", border: InputBorder.none),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 40),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/usernamecreate');
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/usernamecreate');
                        },
                        child: Text(
                          "LOGIN",
                          style: TextStyle(color: Colors.black),
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 40, top: 10, bottom: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Sign in with",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 40,
                      ),
                      CircleAvatar(
                        radius: 40,
                      ),
                      CircleAvatar(
                        radius: 40,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: Clipper(),
      child: Container(
        decoration: BoxDecoration(color: Color(0xff56C596)),
      ),
    );
  }
}

class Clipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height / 3);
    path.cubicTo(size.width / 3, size.height / 2.6, size.width / 2,
        size.height / 3, size.width, size.height / 3.2);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
