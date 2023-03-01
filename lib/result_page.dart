import 'package:flutter/material.dart';
import 'package:life_expectancy/constants.dart';
import 'package:life_expectancy/hesap.dart';
import 'package:life_expectancy/user_data.dart';

import 'my_container.dart';

class ResultPage extends StatelessWidget {
  final UserData _userData;
  ResultPage(this._userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Sonuç Sayfası',
        style: TextStyle(fontSize: 25, color: Colors.black),
      )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Center(
              child: Text(
                'KALAN ÖMRÜNÜZ:',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    Hesap(_userData).hesaplama().round().toString() + ' gün',
                    style: TextStyle(fontSize: 40),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                'Saglicakla Kalin :)',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Satisfy',
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'GERİ DÖN',
                  style: kMetinStili,
                ),
              ))
        ],
      ),
    );
  }
}
