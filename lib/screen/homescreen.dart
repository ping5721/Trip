import 'package:TripApp/screen/trip.dart';
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
      bottomSheet: Container(
        height: MediaQuery.of(context).size.height * .07,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.add),
            Icon(Icons.save),
            Icon(Icons.search),
            Icon(Icons.alarm),
            Icon(Icons.settings),
          ],
        ),
      ),
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
                  DataRow(),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Province",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  DataRow(),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Explore new places",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  DataRow(),
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

class DataRow extends StatefulWidget {
  DataRow({Key key}) : super(key: key);

  @override
  _DataRowState createState() => _DataRowState();
}

class _DataRowState extends State<DataRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .3,
      child: Container(
        margin: EdgeInsets.only(left: 15),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[Cards(), Cards()],
        ),
      ),
    );
  }
}

class Searchbox extends StatefulWidget {
  Searchbox({Key key}) : super(key: key);

  @override
  _SearchboxState createState() => _SearchboxState();
}

class _SearchboxState extends State<Searchbox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .6,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)),
      child: TextFormField(
        decoration: InputDecoration(),
      ),
    );
  }
}

class Cards extends StatefulWidget {
  Cards({Key key}) : super(key: key);
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Container(
        height: MediaQuery.of(context).size.height * .2,
        width: MediaQuery.of(context).size.width * .3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber[600],
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0.7, 0.8),
              child: Text("อบอร่อย"),
            )
          ],
        ),
      ),
    );
  }
}
