// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'lib/images/banner.png',
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Opacity(
            opacity: 0.2,
            child: Container(
              color: Colors.black,
            ),
          ),
        ),

        // Image And Name number
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 90.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage:
                        AssetImage('lib/images/sadia profile pic.jpg'),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        'Sadia Islam',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '01312345678',
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 12),
                          ),
                          Icon(Icons.arrow_downward_sharp)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Icons
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.notifications),
                  Icon(Icons.search),
                  Icon(Icons.reviews_sharp),
                ],
              ),
            )
          ],
        ),
      ),
      // end of appbar

      body: SingleChildScrollView(
        child: Column(
          children: [
            //first section
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: [
                  //Account  Balance and details
                  Column(
                    children: [
                      Text(
                        "Account Balance",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade500,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FaIcon(FontAwesomeIcons.bangladeshiTakaSign,
                                      color: Colors.white),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "535.42",
                                    style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Available",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Details',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.arrow_right_sharp,
                            color: Colors.blue,
                          )
                        ],
                      )
                    ],
                  ),
                  //list tiles data, minite, sms
                  Column(
                    children: [
                      SizedBox(
                        width: 210,
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.globe,
                            color: Colors.blue,
                          ),
                          title: Text('515 MB'),
                          trailing: Icon(
                            Icons.arrow_right_alt,
                            color: Colors.blue,
                          ),
                          onTap: () {
                            // Handle item tap
                          },
                        ),
                      ),
                      SizedBox(
                        width: 210,
                        child: ListTile(
                          leading: Icon(
                            Icons.phone,
                            color: Colors.blue,
                          ),
                          title: Text('44 Min'),
                          trailing: Icon(
                            Icons.arrow_right_alt,
                            color: Colors.blue,
                          ),
                          onTap: () {
                            // Handle item tap
                          },
                        ),
                      ),
                      SizedBox(
                        width: 210,
                        child: ListTile(
                          leading: Icon(
                            Icons.message,
                            color: Colors.blue,
                          ),
                          title: Text('55 SMS'),
                          trailing: Icon(
                            Icons.arrow_right_alt,
                            color: Colors.blue,
                          ),
                          onTap: () {
                            // Handle item tap
                          },
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            //first section end.
            Divider(
              color: Colors.grey.shade300,
              thickness: 10,
            ),
            //Section second start
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //avator
                  Row(
                    children: [
                      CircleAvatar(
                        foregroundColor: Colors.transparent,
                        backgroundImage: AssetImage(
                          'lib/images/icons/BKash-Icon-Logo.wine.png',
                        ),
                      ),
                      CircleAvatar(
                        foregroundColor: Colors.transparent,
                        backgroundImage: AssetImage(
                          'lib/images/icons/nogad.jpg',
                        ),
                      ),
                      CircleAvatar(
                        foregroundColor: Colors.transparent,
                        backgroundImage: AssetImage(
                          'lib/images/icons/visa.png',
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade200,
                        child: Text(
                          '+2',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                  // button
                  ElevatedButton(
                    style: ButtonStyle(),
                    onPressed: () {},
                    child: Text('Recharge Now'),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey.shade300,
              thickness: 10,
            ),
            SizedBox(
              child: Image.asset(
                'lib/images/banner 2.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Divider(
              color: Colors.grey.shade300,
              thickness: 10,
            ),
            //Cards
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Get 30 GB(WithBonous) for 30 Days@৳ ৳380'),
                            TextButton(
                              onPressed: () {},
                              child: Text('Get now'),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Get 30 GB(WithBonous) for 30 Days@৳ ৳380'),
                            TextButton(
                              onPressed: () {},
                              child: Text('Get now'),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Get 30 GB(WithBonous) for 30 Days@৳ ৳380'),
                            TextButton(
                              onPressed: () {},
                              child: Text('Get now'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //cards end
            Divider(
              color: Colors.grey.shade300,
              thickness: 10,
            ),
            // MyGp Special offer !
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'MyGP Special Offer !',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'lib/images/myoffer.jpg',
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Tap to get the offer',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //card end
            Divider(
              color: Colors.grey.shade300,
              thickness: 10,
            ),
            GridView.count(
              crossAxisSpacing: 1,
              mainAxisSpacing: 2,
              crossAxisCount: 2,
              children: <Widget>[],
            ),
            // Manu Icons
          ],
        ),
      ),
    );
  }
}
