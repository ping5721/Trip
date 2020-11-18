import 'package:TripApp/screen/tripscreen.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      bottomSheet: BottomNavbar(),
      body: SafeArea(
        child: Column(
          children: [
            Divider(),
            Container(
              height: MediaQuery.of(context).size.height * .9,
              child: ListView(
                children: [
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => (TripDetail()),
                              ),
                            );
                          },
                          child: Text(
                            "Top places",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Province",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Explore new places",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  SizedBox(height: 20)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff56C596),
      height: MediaQuery.of(context).size.height * .07,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          Icon(
            Icons.add_circle_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.bookmark,
            color: Colors.white,
          ),
          GestureDetector(
            child: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
    );
  }
}
