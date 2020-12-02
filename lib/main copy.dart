import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6D2177).withOpacity(0.5),
      appBar: AppBar(
          backgroundColor: Color(0xFF6D2177).withOpacity(1),
          title: Text('Cartão do Nubank'),
          actions: [
            Icon(
              Icons.credit_card_outlined,
              size: 30,
            ),
            SizedBox(
              width: 20,
            ),
          ]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: InkWell(
              onTap: () {
                print('teste');
              },
              borderRadius: BorderRadius.circular(50),
              child: Container(
                height: 210,
                decoration: BoxDecoration(
                  color: Color(0xFF6D2177).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        //border: Border.all(),
                        image: DecorationImage(
                          image: AssetImage("./assets/chip.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        //border: Border.all(),
                        image: DecorationImage(
                          image: AssetImage("./assets/nfc.png"),
                          colorFilter: ColorFilter.matrix(<double>[
                            -1,
                            0,
                            0,
                            0,
                            255,
                            0,
                            -1,
                            0,
                            0,
                            255,
                            0,
                            0,
                            -1,
                            0,
                            255,
                            0,
                            0,
                            0,
                            1,
                            0,
                          ]),
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
