import 'package:amazon_clone_app/constants/consts.dart';

ThemeData getThemeData() => ThemeData(
      scaffoldBackgroundColor: MyColors.whiteColor,
      appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
    );

InputDecoration inputDecoration({Widget? suffixIcon}) => InputDecoration(
      border: const OutlineInputBorder(
        
        borderSide: BorderSide(
          color: Colors.white,
        ),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
          width: 2,
        ),
      ),
      suffixIcon: suffixIcon ?? nil,
      constraints: const BoxConstraints(maxHeight: 100),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.orange,
          width: 2,
        ),
      ),
    );
