import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart' as widgets;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool isDashboardVisible = true;
  bool isStylish1Visible = false;
  bool isStylish2Visible = false;
  bool isStylish3Visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Top left corner image and text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Scissors image and text
                    Container(
                      child: Column(
                        children: [
                          widgets.Image.asset(
                            'image/scissors-removebg-preview.png',
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            "Scissors",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Top right corner image and text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      'image/admin logo.jpeg', // Replace with your right image asset path
                      width: 100,
                      height: 100,
                    ),
                    Text(
                      'Admin',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(20),
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isDashboardVisible = true;
                          isStylish1Visible = false;
                          isStylish2Visible = false;
                          isStylish3Visible = false;
                        });
                      },
                      child: Text('Dashboard'),
                    ),
                    Visibility(
                      visible: isDashboardVisible,
                      child: Column(
                        children: [
                          // Dashboard content goes here
                          SizedBox(height: 10),
                          Text(
                            "Dashboard Content",
                            style: TextStyle(fontSize: 16),
                          ),
                          // Add more widgets for Dashboard content as needed
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(20),
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isDashboardVisible = false;
                          isStylish1Visible = true;
                          isStylish2Visible = false;
                          isStylish3Visible = false;
                        });
                      },
                      child: Text('Stylish 1'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isDashboardVisible = false;
                          isStylish1Visible = false;
                          isStylish2Visible = true;
                          isStylish3Visible = false;
                        });
                      },
                      child: Text('Stylish 2'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isDashboardVisible = false;
                          isStylish1Visible = false;
                          isStylish2Visible = false;
                          isStylish3Visible = true;
                        });
                      },
                      child: Text('Stylish 3'),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: isStylish1Visible,
                child: Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(20),
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "Stylish 1 Content",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: isStylish2Visible,
                child: Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(20),
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "Stylish 2 Content",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: isStylish3Visible,
                child: Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(20),
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "Stylish 3 Content",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
