import 'package:flutter/material.dart';

void main() => runApp(Main());

class Main extends StatefulWidget {
  Home createState() => Home();
}

class Home extends State<Main> {
  bool _isAccessibility = false;
  bool _isTimer = false;
  bool _isAndroid = false;
  bool _isIphone = false;

  final accesibilityoff = SnackBar(
    content: Text("Accesibility OFF"),
    duration: Duration(seconds: 3),
  );
  final accesibilityon = SnackBar(
    content: Text("Accesibility ON"),
    duration: Duration(seconds: 3),
  );

  final timeroff = SnackBar(
    content: Text("Timer OFF"),
    duration: Duration(seconds: 3),
  );
  final timeron = SnackBar(
    content: Text("Timer ON"),
    duration: Duration(seconds: 3),
  );

  final androidoff = SnackBar(
    content: Text("Android OFF"),
    duration: Duration(seconds: 3),
  );
  final androidon = SnackBar(
    content: Text("Android ON"),
    duration: Duration(seconds: 3),
  );

  final iphoneoff = SnackBar(
    content: Text("iPhone OFF"),
    duration: Duration(seconds: 3),
  );
  final iphoneon = SnackBar(
    content: Text("iPhone ON"),
    duration: Duration(seconds: 3),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App Titulo',
      home: Builder(
        builder: (BuildContext context) {
          return Scaffold(
            backgroundColor: Color(0xFFEFEFEF),
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 36, 87, 198),
              title: Text(
                'Bienvenidos al ITESO',
                style: TextStyle(
                  color: Color(0xFFEFEFEF),
                ),
              ),
              iconTheme: IconThemeData(
                color: Color(0xFF262626),
              ),
              elevation: 0,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.more_vert),
                  color: Color(0xFFEFEFEF),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('By Pablo Nunez'),
                          content: Text('Tarea 2 - Apps Dev for ITESO'),
                          actions: <Widget>[
                            ElevatedButton(
                              child: Text('Close'),
                              style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 36, 87, 198),),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ], // add this line
            ),
            body: Container(
              //Screen
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Container(
                width: double.infinity,
                height: 200,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 2),
                      blurRadius: 3.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                  border: Border.all(
                    color: Colors.transparent, //Color(0xFF262626),
                  ),
                  color: Color(0xFFEFEFEF),
                ),
                child: Column(
                  children: [
                    //first row
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            height: 50,
                            child: Icon(Icons.account_circle_rounded, size: 50),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Flutter McFlutter",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Experienced App Developer",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    //second row
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text("123 Main Street"),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text("(415) 555-0198"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //third row
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Builder(
                              builder: (BuildContext context) {
                                return IconButton(
                                  color: _isAccessibility
                                      ? Color(0xFF262626)
                                      : Colors.grey,
                                  icon: Icon(Icons.accessibility),
                                  onPressed: () {
                                    _isAccessibility = !_isAccessibility;
                                    setState(() {});
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        _isAccessibility
                                            ? accesibilityon
                                            : accesibilityoff);
                                  },
                                );
                              },
                            ),
                          ),
                          Expanded(
                            child: Builder(
                              builder: (BuildContext context) {
                                return IconButton(
                                  color: _isTimer
                                      ? Color(0xFF262626)
                                      : Colors.grey,
                                  icon: Icon(Icons.timer),
                                  onPressed: () {
                                    _isTimer = !_isTimer;
                                    setState(() {});
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        _isTimer ? timeron : timeroff);
                                  },
                                );
                              },
                            ),
                          ),
                          Expanded(
                            child: Builder(
                              builder: (BuildContext context) {
                                return IconButton(
                                  color: _isAndroid
                                      ? Color(0xFF262626)
                                      : Colors.grey,
                                  icon: Icon(Icons.phone_android),
                                  onPressed: () {
                                    _isAndroid = !_isAndroid;
                                    setState(() {});
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        _isAndroid ? androidon : androidoff);
                                  },
                                );
                              },
                            ),
                          ),
                          Expanded(
                            child: Builder(
                              builder: (BuildContext context) {
                                return IconButton(
                                  color: _isIphone
                                      ? Color(0xFF262626)
                                      : Colors.grey,
                                  icon: Icon(Icons.phone_iphone),
                                  onPressed: () {
                                    _isIphone = !_isIphone;
                                    setState(() {});
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        _isIphone ? iphoneon : iphoneoff);
                                  },
                                );
                              },
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
        },
      ),
    );
  }
}