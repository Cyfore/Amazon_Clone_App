import '../../../routes/routes.dart';

class AuthConstants {
  AuthConstants._();
  // String
  static const preliminaryInformation =
      'İstek listenizi görüntüleyin\nSiparişleri Bulma ve Sınıflandırma\nAlışverişlerinizi takip edin';
  static const signinInfo = 'Hesabınıza giriş yapın';
  static const signInButton = 'Müşteri misiniz? Giriş yapın';
  static const signUpButton = 'Yeni bir Amazon.com.tr kullanıcısı mısınız? Hesap oluşturun';
  static const passLogin = 'Girişi atla';
  static const buttonError = 'Hata';
  // Color
  static const signInButtonColor = 0xE6E6CA5B;
  static const orderButtonColor = 0xFFD3D6D7;

  // Abaout Login Button
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
