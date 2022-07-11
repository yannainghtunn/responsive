import 'package:flutter/cupertino.dart';

class ResponsiveLayout extends StatelessWidget {
  Widget small, large;
  double maxWidth;
  ResponsiveLayout(
      {required this.small, required this.large, this.maxWidth = 720, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool isSmall = MediaQuery.of(context).size.width < maxWidth;
    return isSmall ? small : large;
  }
}
