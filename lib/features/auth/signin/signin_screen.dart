import 'package:amazon_clone_app/constants/consts.dart';
import 'package:amazon_clone_app/constants/paddings.dart';

import 'package:amazon_clone_app/features/common/widgets/text/bold_text.dart';

import '../../../common/widgets/app_logo.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const AppLogo(height: 50, width: 130),
        backgroundColor: MyColors.lightGrey,
      ),
      body: Padding(
        padding: const ScreenPadding.all(),
        child: Column(
          children: [
            (context.screenHeight * 0.01).heightBox,
            const CustomBoldText(text: 'naaaa'),
          ],
        ),
      ),
    );
  }
}
