part of welcome_screen;

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({super.key, required this.info, required this.color, required this.authRoute});
  final Map<String, String> info;
  final int color;
  final int authRoute;

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AuthController());
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(color),
        ),
        onPressed: () {
          if (authRoute == 1) {
            controller.authRoute(true);
            controller.auth = Auth.signin;
          } else {
            controller.authRoute(false);
            controller.auth = Auth.signup;
          }

          Get.toNamed(info['route'] ?? RoutesClass.error);
        },
        child: Center(
          child: CustomRegularText(
            text: info['text'] ?? AuthConstants.buttonError,
            textAlign: TextAlign.center,
          ),
        ));
  }
}
