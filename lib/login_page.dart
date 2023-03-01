import 'package:flutter/material.dart';

import 'input_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.lightBlue[200],
        appBarTheme: AppBarTheme(color: Colors.orange[500]),
      ),
      home: InputPage(),
    );
  }
}

/*
import 'package:flutter/material.dart';

import 'input_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 70.0,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage('assets/images/indir.jpg'),
              ),
              Text(
                'YAŞAM BEKLENTİSİ UYGULAMASINA HOŞGELDİNİZ',
                style: TextStyle(fontSize: 45, color: Colors.amber),
              ),
              Text(
                'FARKINDALIK HAYAT KURTARIR...',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Satisfy',
                  color: Colors.blue,
                ),
              ),
              Container(
                width: 200,
                child: Divider(
                  height: 30,
                  color: Colors.deepPurple,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InputPage(),
                      )); //builder: (context) => InputPage()     (context) => InputPage()
                },
                child: Text(
                  'GERİ DÖN',
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
*/
