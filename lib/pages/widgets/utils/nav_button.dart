import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final IconData iconID;
  final tooltipText;
  final onPressed;

  const NavButton({
    Key? key,
    required this.iconID,
    required this.onPressed,
    this.tooltipText = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(iconID),
      tooltip: tooltipText,
      onPressed: onPressed,
    );
  }
}
