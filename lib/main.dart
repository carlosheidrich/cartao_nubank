import 'dart:ui';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(NubankPage());
}

class NubankPage extends StatefulWidget {
  @override
  _NubankPageState createState() => _NubankPageState();
}

class _NubankPageState extends State<NubankPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(60, 25, 79, 1),
        appBar: AppBar(
            backgroundColor: Color.fromRGBO(109, 33, 119, 1),
            title: Text('Cartão do Nubank'),
            actions: <Widget>[
              Icon(
                Icons.credit_card_outlined,
                size: 30,
              ),
              SizedBox(
                width: 20,
              ),
            ]),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: FlipCard(
              direction: FlipDirection.HORIZONTAL,
              front: NubankFrente(),
              back: NubankVerso(),
            ),
          ),
        ),
      ),
    );
  }
}

class NubankFrente extends StatefulWidget {
  @override
  _NubankFrenteState createState() => _NubankFrenteState();
}

class _NubankFrenteState extends State<NubankFrente> {
  String nome = '';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
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
                          top: 70,
                          child: Image.asset(
                            'assets/chip.png',
                            width: 60,
                          ),
                        ),
                        Positioned(
                          left: 110,
                          top: 80,
                          child: Image.asset(
                            'assets/nfc.png',
                            width: 30,
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                          left: 20,
                          top: 105,
                          child: Image.asset(
                            'assets/nu_logo.png',
                            width: 120,
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                          left: 150,
                          top: 165,
                          child: Text(
                            '$nome',
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
            SizedBox(
              height: 30,
            ),
            Container(
              height: 70,
              child: TextField(
                textInputAction: TextInputAction.send,
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
                maxLength: 30,
                maxLengthEnforced: true,
                style: TextStyle(
                  fontSize: 22,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    gapPadding: 50,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                onChanged: (value) {
                  print(value);
                  setState(() {
                    nome = value;
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class NubankVerso extends StatefulWidget {
  @override
  _NubankVersoState createState() => _NubankVersoState();
}

class _NubankVersoState extends State<NubankVerso> {
  String cartao = '';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
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
                            height: 80,
                            width: 400,
                            color: Colors.grey,
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
                          left: 15,
                          bottom: 20,
                          child: Text(
                            '$cartao',
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
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              child: TextField(
                textInputAction: TextInputAction.send,
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontSize: 22,
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  CartaoBancarioInputFormatter(),
                ],
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    gapPadding: 50,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                onChanged: (value) {
                  print(value);
                  setState(() {
                    cartao = value;
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
