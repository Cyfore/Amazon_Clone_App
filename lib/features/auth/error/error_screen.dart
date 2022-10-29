import 'package:amazon_clone_app/common/widgets/text/error_text.dart';
import 'package:amazon_clone_app/constants/consts.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ErrorText(),
      ),
    );
  }
}
