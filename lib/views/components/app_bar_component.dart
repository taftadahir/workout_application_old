import 'package:flutter/material.dart';

import 'package:workout_application_development/configs/colors.dart';

class AppBarComponent {
  static AppBar getAppBarComponent({
    Widget? leading,
    List<Widget>? actions,
    Widget? title,
  }) {
    return AppBar(
      leading: leading,
      title: title,
      actions: actions,
      elevation: 0.0,
      backgroundColor: whiteColor,
    );
  }
}
