import 'package:amazon_clone_app/constants/consts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: MyColors.golden),
      child: Center(
        child: Text(text),
      ),
    );
  }
}
