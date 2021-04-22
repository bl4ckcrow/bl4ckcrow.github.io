import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:web_profile/business_logic/controllers/menu_controller.dart';
import 'package:web_profile/config/constants/responsive_breakpoints.dart';

class BarMenu extends StatelessWidget {
  final MenuController _menuController = MenuController();
  final AutoScrollController autoScrollController;

  BarMenu({
    Key? key,
    required this.autoScrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
            _menuController.menuItems.length,
            (index) => BarMenuItem(
                title: _menuController.menuItems[index],
                press: () => autoScrollController.scrollToIndex(index))));
  }
}

class BarMenuItem extends StatefulWidget {
  final String title;
  final VoidCallback press;

  const BarMenuItem({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  _BarMenuItemState createState() => _BarMenuItemState();
}

class _BarMenuItemState extends State<BarMenuItem> {
  bool _isHover = false;

  Color _borderColor() {
    if (_isHover) {
      return Theme.of(context).accentColor;
    } else {
      return Colors.transparent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      onTap: widget.press,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: _borderColor(), width: 3),
          ),
        ),
        child: Text(
          widget.title,
        ),
      ),
    );
  }
}
