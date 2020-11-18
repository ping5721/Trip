import 'package:TripApp/getUser.dart';
import 'package:TripApp/screen/homescreen.dart';
import 'package:flutter/material.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavbar(),
        resizeToAvoidBottomPadding: false,
        body: FutureBuilder(
          future: getUser(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 16, bottom: 5),
                      child: Text(
                        "Profile",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 16),
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Color(0xff56C596),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Column(
                            children: [
                              Text(
                                snapshot.data['name'].toString(),
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                snapshot.data['userid'].toString(),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Name",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      snapshot.data['name'].toString(),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Username',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      snapshot.data['userid'].toString(),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Manage account",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Icon(Icons.arrow_forward_ios)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Privacy",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Icon(Icons.arrow_forward_ios)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Logout",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Icon(Icons.logout)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: Container(child: CircularProgressIndicator(backgroundColor: Color(0xff56C596),)));
            }
            return Container();
          },
        ),
      ),
    );
  }
}
