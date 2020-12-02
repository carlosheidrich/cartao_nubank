import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

void main() {
  runApp(MyApp());
}

bool frente = true;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NubankVerso(),
    );
  }
}

class NubankFrente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(153, 51, 153, 0.5),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(109, 33, 119, 1),
          title: Text('Cartão do Nubank'),
          actions: <Widget>[
            InkWell(
              onTap: () {
                if (frente) {
                  frente = false;
                  NubankVerso();
                  
                } else {
                  frente = true;
                  NubankFrente();
                }
              },
              child: Icon(
                Icons.credit_card_outlined,
                size: 30,
              ),
            ),
            SizedBox(
              width: 20,
            ),
          ]),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: AspectRatio(
            aspectRatio: 8.5 / 5.4,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(97, 47, 116, 1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: 10,
                    top: 10,
                    child: Image.asset(
                      'assets/mastercard.png',
                      width: 90,
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 90,
                    child: Image.asset(
                      'assets/chip.png',
                      width: 60,
                    ),
                  ),
                  Positioned(
                    left: 110,
                    top: 100,
                    child: Image.asset(
                      'assets/nfc.png',
                      width: 30,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 130,
                    child: Image.asset(
                      'assets/nu_logo.png',
                      width: 120,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    left: 150,
                    top: 190,
                    child: Text(
                      'Carlos A Heidrich',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NubankVerso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(153, 51, 153, 0.5),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(109, 33, 119, 1),
          title: Text('Cartão do Nubank'),
          actions: <Widget>[
            InkWell(
              onTap: () {
                if (frente) {
                  frente = false;
                  NubankVerso();
                } else {
                  frente = true;
                  NubankFrente();
                }
              },
              child: Icon(
                Icons.credit_card_outlined,
                size: 30,
              ),
            ),
            SizedBox(
              width: 20,
            ),
          ]),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: AspectRatio(
            aspectRatio: 8.5 / 5.4,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(97, 47, 116, 1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    child: Container(
                      width: 400,
                      height: 80,
                      color: Colors.white70,
                    ),
                  ),
                  Positioned(
                    right: 15,
                    bottom: 15,
                    child: Image.asset(
                      'assets/cirrus.png',
                      width: 80,
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 190,
                    child: Text(
                      '9999 9999 9999 9999',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
