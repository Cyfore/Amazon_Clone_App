import 'package:amazon_clone_app/constants/consts.dart';

import '../../../common/widgets/app_logo.dart';

class AuthAppBar extends StatelessWidget with PreferredSizeWidget {
  const AuthAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const AppLogo(height: 50, width: 130),
      backgroundColor: MyColors.lightGrey,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
