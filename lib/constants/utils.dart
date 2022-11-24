import 'package:amazon_clone_app/constants/consts.dart';

void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}


// void showSnackBar(BuildContext context, String text) {
//   Get.showSnackbar(GetSnackBar(
//     messageText: Text(text),
//   ));
// }