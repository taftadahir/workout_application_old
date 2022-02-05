import 'package:flutter/material.dart';

const double minHeight = 650.0;

double getLogoSize(BuildContext context) {
  return MediaQuery.of(context).size.height < minHeight ? 120 : 120;
}
