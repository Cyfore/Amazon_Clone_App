import '../../../routes/routes.dart';

class AuthConstants {
  // String
  static const preliminaryInformation =
      'Istek listenizi görüntüleyin\nSiparisleri Bulma ve Sınıflandırma\nAlısverislerinizi takip edin';
  static const signinInfo = 'Hesabınıza giriş yapın';
  static const signInButton = 'Musteri misiniz? Giris yapin';
  static const signUpButton = 'Yeni bir Amazon.com.tr kullanıcısı mısınız? Hesap olusturun';
  static const passLogin = 'Girisi atla';
  static const buttonError = 'Hata';
  // Color
  static const signInButtonColor = 0xE6E6CA5B;
  static const orderButtonColor = 0xFFD3D6D7;

  // abaout Login Button

  static List<Map<String, String>> info = [
    {'route': RoutesClass.splash, 'text': AuthConstants.signInButton},
    {'route': RoutesClass.splash, 'text': AuthConstants.signUpButton},
    {'route': RoutesClass.splash, 'text': AuthConstants.passLogin}
  ];

  static List colors = [
    AuthConstants.signInButtonColor,
    AuthConstants.orderButtonColor,
    AuthConstants.orderButtonColor,
  ];
}
