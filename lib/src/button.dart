import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String flutterText = "Nike";
  int index2 = 0;
  List<String> collections = ['Nike', 'Jordan', '4 Son', 'Clasicos'];
  List<String> urlImgs = [
    'assets/t1.jpg',
    'assets/t2.jpg',
    'assets/t3.png',
    'assets/t4.jpg'
  ];
  int index = 0;

  void onPressButton() {
    setState(() {
      index = index < urlImgs.length - 1 ? index + 1 : 0;
      flutterText = collections[index];
      index2 = index2 < 4 ? index2 + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget Imagenes 170755"),
        ),
        body: Container(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(flutterText, style: TextStyle(fontSize: 40.0)),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Image.asset(
                urlImgs[index],
                width: 200.0,
                height: 400.0,
                // Puedes personalizar el ancho y alto de la imagen según tus necesidades.
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              ElevatedButton(
                child: Text(
                  "Cambiar",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: onPressButton,
              )
            ],
          )),
        ));
  }
}
