import '../../../routes/routes.dart';

class AuthConstants {
  AuthConstants._();
  // Login Screen String
  static const preliminaryInformation =
      'İstek listenizi görüntüleyin\nSiparişleri Bulma ve Sınıflandırma\nAlışverişlerinizi takip edin';
  static const signinInfo = 'Hesabınıza giriş yapın';
  static const signInButton = 'Müşteri misiniz? Giriş yapın';
  static const signUpButton = 'Yeni bir Amazon.com.tr kullanıcısı mısınız? Hesap oluşturun';
  static const passLogin = 'Girişi atla';
  static const buttonError = 'Hata';

  // Auth Screen String
  static const createAccount = 'Hesap oluşturun';
  static const signinAccount = 'Giriş yapın';
  static const userSurAndName = "Adı ve soyadı";
  static const emailOrPhone = "Cep telefonu numarası veya e-posta";
  static const creatPassword = "Parola oluşturun";

                // TextFormFiled

  // Color
  static const signInButtonColor = 0xE6E6CA5B;
  static const orderButtonColor = 0xFFD3D6D7;

  //Size
  static const double twentyP = 20;

  // Abaout Login Button
  static List<Map<String, String>> info = [
    {'route': RoutesClass.auth, 'text': AuthConstants.signInButton},
    {'route': RoutesClass.auth, 'text': AuthConstants.signUpButton},
    {'route': RoutesClass.splash, 'text': AuthConstants.passLogin}
  ];

  static List colors = [
    AuthConstants.signInButtonColor,
    AuthConstants.orderButtonColor,
    AuthConstants.orderButtonColor,
  ];

  static List authRoute = [1, 2, 3];
}
