import 'package:flutter/material.dart';

class TripDetail extends StatefulWidget {
  TripDetail({Key key}) : super(key: key);

  @override
  _TripDetailState createState() => _TripDetailState();
}

class _TripDetailState extends State<TripDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Route',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.symmetric(
                              horizontal: BorderSide(width: 1,color: Colors.grey))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 0),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                                'https://www.homenayoo.com/wp-content/uploads/2013/08/%E0%B8%84%E0%B8%AD%E0%B8%99%E0%B9%82%E0%B8%94-%E0%B9%82%E0%B8%99%E0%B9%80%E0%B8%9A%E0%B8%B4%E0%B8%A5-%E0%B9%80%E0%B8%AE%E0%B9%89%E0%B8%B2%E0%B8%AA%E0%B9%8C-%E0%B8%9E%E0%B8%8D%E0%B8%B2%E0%B9%84%E0%B8%97-NOBLE-HOUSE-PHAYATHAI.jpg'),
                          ),
                          title: Text('Noblehouse Phayathai'),
                          subtitle: Text('35/208'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/8/8b/Siam_Station_Upper_Platform_201801.jpg'),
                          radius: 25,
                        ),
                        title: Text('BTS Siam'),
                        subtitle: Text('Exit 2'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://ed.edtfiles-media.com/static-cache/resize-cache/wk18/ud/gal/dcp/30/89265/_MG_5607.jpg'),
                          radius: 25,
                        ),
                        title: Text('Siam square one'),
                        subtitle: Text('35/208'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                        ),
                        title: Text('Noblehouse Phayathai'),
                        subtitle: Text('35/208'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
