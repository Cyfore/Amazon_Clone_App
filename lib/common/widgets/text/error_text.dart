import 'package:amazon_clone_app/constants/consts.dart';

class ErrorText extends StatelessWidget {
  const ErrorText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Error',
      style: TextStyle(
        color: MyColors.redColor,
        fontFamily: AppConstants.bold,
        fontSize: 30,
      ),
    );
  }
}
