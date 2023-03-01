import 'package:flutter/material.dart';

import 'login_page.dart';

void main() {
  runApp(MaterialApp(home: MainPage()));
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue[200],
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                textAlign: TextAlign.center,
                'Farkındalık hayat kurtarır...',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontFamily: 'Satisfy',
                ),
              ),
              Container(
                width: 350,
                height: 20,
                child: Divider(
                  height: 20,
                  color: Colors.black,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/1.jpg'),
                    ),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 6,
                    )),
                margin: EdgeInsets.all(20),
                height: 200,
              ),
              Text(
                textAlign: TextAlign.center,
                'YASAM BEKLENTISI UYGULAMASINA HOSGELDINIZ',
                style: TextStyle(
                  fontSize: 35,
                  letterSpacing: 1.5,
                  color: Colors.black,
                  fontFamily: 'Satisfy',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 350,
                height: 20,
                child: Divider(
                  height: 20,
                  color: Colors.black,
                ),
              ),
              Container(
                margin: EdgeInsets.all(13),
                height: 60,
                width: 150,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        )); //builder: (context) => InputPage()  lder: (context) => InputPage()     (context) => InputPage()
                  },
                  child: Text(
                    'BAŞLA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

/*
import 'package:flutter/material.dart';

import 'input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
} */

/* return MaterialApp(
      theme: ThemeData(
  PRİMARY>>>                 appBarTheme: AppBarTheme(color: Colors.orange)), //ThemeData.dark,
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'YAŞAM BEKLENTİSİ'),
    );
    **********************************

       PRİMARY
floatingActionButton: Theme(
        data: ThemeData(
  ACCENT>>>>                     colorScheme: ColorScheme.dark(secondary: Colors.cyan),
        ),
*/
