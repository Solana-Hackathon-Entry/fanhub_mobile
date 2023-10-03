import 'package:flutter/material.dart';

import '../../config/themes.dart';

class BottomBarButton extends StatelessWidget {
  final int index;
  final int currentSelectedIndex;
  final VoidCallback onPress;
  final IconData iconData;
  final double iconSize;

  const BottomBarButton({
    Key? key,
    required this.index,
    required this.currentSelectedIndex,
    required this.onPress,
    required this.iconData,
    this.iconSize = 28.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPress,
      icon: Icon(
        iconData,
        size: iconSize,
        color: currentSelectedIndex == index ? ColorConstant.color3 : ColorConstant.color1,
      ),
    );
  }
}
