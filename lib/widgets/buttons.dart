import 'package:aftos/theme.dart';
import 'package:flutter/material.dart';

defaultButtonStyle(bool darkMode, {bool inverter = false}) {
  return ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(
        (darkMode ^ inverter) ? AppColors.cardLight : AppColors.cardDark),
    foregroundColor: MaterialStateProperty.all<Color>(
      (darkMode ^ inverter) ? AppColors.textDark : AppColors.textLight,
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
    )),
  );
}

padAppBar(List<Widget> widList) {
  SizedBox hpad = const SizedBox(
    width: 5,
  );
  List<Widget> widlistNew = [];
  for (Widget i in widList) {
    if (i != null) {
      widlistNew.add(i);
      widlistNew.add(hpad);
    }
  }
  return widlistNew;
}

defaultAppBar(bool darkMode, {List<ElevatedButton> extraButtons = const []}) {
  return AppBar(
    backgroundColor: (darkMode) ? AppColors.cardDark : AppColors.cardLight,
    foregroundColor: (darkMode) ? AppColors.textLight : AppColors.textDark,
    title: const Text("Aftos"),
    actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: padAppBar(extraButtons +
            [
              ElevatedButton(
                  style: defaultButtonStyle(darkMode),
                  onPressed: () {},
                  child: const Icon(Icons.search_rounded)),
            ]),
      ),
    ],
  );
}
