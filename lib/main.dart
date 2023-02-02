import 'package:flutter/material.dart';

void main() => runApp(Main());

class Main extends StatefulWidget {
  Home createState() => Home();
}

class Home extends State<Main> {
  bool food = false;
  bool info = false;
  bool location = false;

  int contador = 0;

  var upIconColor = Color(0xFF262626);
  var downIconColor = Color(0xFF262626);

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
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                  Color.fromARGB(255, 36, 87, 198),
                                ),
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
              //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 3),
                          blurRadius: 3.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      child: Image.network(
                        'https://www.iteso.mx/image/journal/article?img_id=2252404&t=1432696736760',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 350,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
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
                        //second row
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    flex: 10,
                                    child: Column(
                                      children: [
                                        Text(
                                          "El ITESO Universidad Jesuita de Guadalajara",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xFF262626),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      children: [
                                        AnimatedContainer(
                                          duration: Duration(seconds: 1),
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.thumb_up,
                                              color: upIconColor,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                contador++;
                                                upIconColor = Color.fromARGB(
                                                    255, 36, 198, 63);
                                              });
                                              Future.delayed(
                                                  Duration(seconds: 1), () {
                                                setState(() {
                                                  upIconColor =
                                                      Color(0xFF262626);
                                                });
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(" $contador"),
                                    ],
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      children: [
                                        AnimatedContainer(
                                          duration: Duration(seconds: 1),
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.thumb_down,
                                              color: downIconColor,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                contador--;
                                                downIconColor = Color.fromARGB(
                                                    255, 198, 36, 36);
                                              });
                                              Future.delayed(
                                                  Duration(seconds: 1), () {
                                                setState(() {
                                                  downIconColor =
                                                      Color(0xFF262626);
                                                });
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Builder(
                                      builder: (BuildContext context) {
                                        return Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              IconButton(
                                                color: food
                                                    ? Colors.grey
                                                    : Color(0xFF262626),
                                                icon: Icon(
                                                  Icons.restaurant,
                                                ),
                                                iconSize: 50,
                                                onPressed: () {
                                                  food = !food;
                                                  setState(() {});
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(SnackBar(
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 36, 87, 198),
                                                    content: Text(
                                                        "Puedes encontrar comida en sus cafeterías."),
                                                    duration:
                                                        Duration(seconds: 3),
                                                  ));
                                                },
                                              ),
                                              Text("Comida"),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: Builder(
                                      builder: (BuildContext context) {
                                        return Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              IconButton(
                                                color: info
                                                    ? Colors.grey
                                                    : Color(0xFF262626),
                                                icon: Icon(
                                                  Icons.info,
                                                ),
                                                iconSize: 50,
                                                onPressed: () {
                                                  info = !info;
                                                  setState(() {});
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(SnackBar(
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 36, 87, 198),
                                                    content: Text(
                                                        "Puedes pedir información en rectoría."),
                                                    duration:
                                                        Duration(seconds: 3),
                                                  ));
                                                },
                                              ),
                                              Text("Información"),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: Builder(
                                      builder: (BuildContext context) {
                                        return Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              IconButton(
                                                color: location
                                                    ? Colors.grey
                                                    : Color(0xFF262626),
                                                icon: Icon(
                                                  Icons.location_pin,
                                                ),
                                                iconSize: 50,
                                                onPressed: () {
                                                  location = !location;
                                                  setState(() {});
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(SnackBar(
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 36, 87, 198),
                                                    duration:
                                                        Duration(seconds: 3),
                                                    content: Text(
                                                        'Se encuentra ubicado en Periférico Sur 8585'),
                                                  ));
                                                },
                                              ),
                                              Text("Ubicación"),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              //aqui
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Text(
                            "Es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957. La institución forma parte del Sistema Universitario Jesuita que integra a ocho universidades en México.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
