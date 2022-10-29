part of login_screen;

class LoginButton extends StatelessWidget {
  const LoginButton({super.key, required this.info, required this.color});
  final Map<String, String> info;
  final int color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(color),
        ),
        onPressed: () => Get.toNamed(info['route'] ?? RoutesClass.error),
        child: Center(
          child: CustomRegularText(
            text: info['text'] ?? AuthConstants.buttonError,
            textAlign: TextAlign.center,
          ),
        ));
  }
}
