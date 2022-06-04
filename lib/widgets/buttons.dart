import 'package:aftos/theme.dart';
import 'package:aftos/widgets/widgets.dart';
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

defaultAppBar(bool darkMode, {List<ElevatedButton> extraButtons = const []}) {
  return AppBar(
    backgroundColor: (darkMode) ? AppColors.cardDark : AppColors.cardLight,
    foregroundColor: (darkMode) ? AppColors.textLight : AppColors.textDark,
    title: const Text("Aftos"),
    actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: hpadWidgetList(
            extraButtons +
                [
                  ElevatedButton(
                      style: defaultButtonStyle(darkMode),
                      onPressed: () {},
                      child: const Icon(Icons.search_rounded)),
                ],
            width: 5),
      ),
    ],
  );
}
