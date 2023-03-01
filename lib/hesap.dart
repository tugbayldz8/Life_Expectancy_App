import 'package:life_expectancy/user_data.dart';

class Hesap {
  UserData _userData;
  Hesap(this._userData);

  double hesaplama() {
    double sonuc;
    sonuc = 900 + (_userData.sporGunu) - (_userData.icilenSigara);
    sonuc += (_userData.boy / _userData.kilo);

    if (_userData.seciliCinsiyet == 'KADIN') {
      return sonuc + 3;
    } else {
      return sonuc;
    }
  }
}
