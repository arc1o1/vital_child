import 'package:flutter/material.dart';

class VcBottomSheetTheme {
  // private constructor
  VcBottomSheetTheme._();

  //--------------------------- light theme ------------------------------------

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.grey,
    modalBackgroundColor: Colors.grey,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
