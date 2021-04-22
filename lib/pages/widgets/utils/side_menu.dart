import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:web_profile/business_logic/controllers/menu_controller.dart';
import 'package:web_profile/config/constants/responsive_breakpoints.dart';
import 'package:web_profile/pages/widgets/utils/logo.dart';

class SideMenu extends StatelessWidget {
  final MenuController _menuController = MenuController();
  final AutoScrollController autoScrollController;

  SideMenu({
    Key? key,
    required this.autoScrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(children: [
          DrawerHeader(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 4.0,
              ),
              child: Logo(),
            ),
          ),
          ...List.generate(
            _menuController.menuItems.length,
            (index) => ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              title: Text(
                _menuController.menuItems[index],
              ),
              onTap: () => autoScrollController.scrollToIndex(index),
            ),
          ),
        ]),
      ),
    );
  }
}
