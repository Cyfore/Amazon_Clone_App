import 'package:amazon_clone_app/constants/consts.dart';

ThemeData getThemeData() => ThemeData(
      scaffoldBackgroundColor: MyColors.whiteColor,
      appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
    );

InputDecoration inputDecoration() => const InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
          width: 2,
        ),
      ),
      constraints: BoxConstraints(maxHeight: 100),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.orange,
          width: 2,
        ),
      ),
    );
