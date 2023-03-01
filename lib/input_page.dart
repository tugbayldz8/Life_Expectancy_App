import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_expectancy/result_page.dart';
import 'package:life_expectancy/user_data.dart';

import 'constants.dart';
import 'icon_cinsiyet.dart';
import 'my_container.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? seciliCinsiyet;
  double icilenSigara = 0.0;
  double sporGunu = 0.0;
  int boy = 170;
  int kilo = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'YAŞAM BEKLENTİSİ',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainer(
                      child: buildRowOutlineButton('BOY'),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      child: buildRowOutlineButton('KİLO'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: MyContainer(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Haftada kaç gün spor yapıyorsunuz?',
                      style: kMetinStili,
                    ),
                    Text(
                      '${sporGunu.round().toString()}',
                      style: kSayiStili,
                    ),
                    Slider(
                        min: 0,
                        max: 7,
                        activeColor: Colors.orange[300],
                        divisions: 7,
                        value: sporGunu,
                        onChanged: (double newValue) {
                          setState(() {
                            sporGunu = newValue;
                          });
                        }),
                  ],
                ),
              ),
            ),
            Expanded(
              child: MyContainer(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Günde kaç sigara içiyorsunuz?',
                      style: kMetinStili,
                    ),
                    Text(
                      //icilenSigara.round().toString(), bu da olurdu
                      '${icilenSigara.round()}',
                      style: kSayiStili,
                    ),
                    Slider(
                      activeColor: Colors.orange[300],
                      min: 0,
                      max: 30,
                      value: icilenSigara,
                      onChanged: (double newValue) {
                        setState(() {
                          icilenSigara = newValue;
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainer(
                      onPress: () {
                        setState(() {
                          seciliCinsiyet = 'KADIN';
                        });
                      },
                      renk: seciliCinsiyet == 'KADIN'
                          ? Colors.orange[200]
                          : Colors.black54,
                      child: MyColumn(
                        yazi: 'KADIN',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      onPress: () {
                        setState(() {
                          seciliCinsiyet = 'ERKEK';
                        });
                      },
                      renk: seciliCinsiyet == 'ERKEK'
                          ? Colors.orange[200]
                          : Colors.black54,
                      child: MyColumn(
                        yazi: 'ERKEK',
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(23, 54)),
                  backgroundColor: MaterialStateProperty.all(Colors.orange)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(UserData(
                            kilo: kilo,
                            boy: boy,
                            seciliCinsiyet: seciliCinsiyet,
                            sporGunu: sporGunu,
                            icilenSigara: icilenSigara))));
              },
              child: Text(
                'HESAPLA',
                style: kMetinStili,
              ),
            )
          ],
        ));
  }

  Row buildRowOutlineButton(String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            label,
            style: kMetinStili,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            label == 'BOY' ? boy.toString() : kilo.toString(),
            style: kSayiStili,
          ),
        ),
        SizedBox(
          width: 25,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButtonTheme(
              data: OutlinedButtonThemeData(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(40, 40),
                  side: BorderSide(
                    color: Colors.orange,
                    width: 2,
                  ),
                  //  backgroundColor: Colors.pink,
                ),
              ),
              child: OutlinedButton(
                child: Icon(
                  FontAwesomeIcons.plus,
                  size: 20,
                  color: Colors.orange,
                ),
                onPressed: () {
                  setState(() {
                    label == 'BOY' ? boy++ : kilo++;
                  });
                },
              ),
            ),
            OutlinedButtonTheme(
              data: OutlinedButtonThemeData(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(40, 40),
                  side: BorderSide(
                    color: Colors.orange,
                    width: 2,
                  ),
                  //  backgroundColor: Colors.pink,
                ),
              ),
              child: OutlinedButton(
                child: Icon(
                  FontAwesomeIcons.minus,
                  size: 20,
                  color: Colors.orange,
                ),
                onPressed: () {
                  setState(() {
                    label == 'BOY' ? boy-- : kilo--;
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
