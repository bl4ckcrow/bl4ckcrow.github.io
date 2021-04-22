import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'package:web_profile/business_logic/controllers/menu_controller.dart';
import 'package:web_profile/config/constants/responsive_breakpoints.dart';
import 'package:web_profile/pages/widgets/utils/bar_menu.dart';
import 'package:web_profile/pages/widgets/utils/logo.dart';
import 'package:web_profile/pages/widgets/utils/responsive_layout.dart';

class Header extends StatelessWidget {
  final MenuController menuController;
  final AutoScrollController autoScrollController;

  Header({Key? key, required this.autoScrollController, required this.menuController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      constraints: BoxConstraints(maxWidth: kMaxWidth),
      color: Theme.of(context).primaryColorDark,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          if (ResponsiveLayout.isMobileScreen(context))
            IconButton(
              icon: Icon(FontAwesomeIcons.bars),
              onPressed: () {
                menuController.openCloseDrawer();
              },
            ),
          Logo(),
          Spacer(),
          if (ResponsiveLayout.isDesktopScreen(context) || ResponsiveLayout.isTabletScreen(context))
            BarMenu(autoScrollController: autoScrollController)
        ],
      ),
    );
  }
}
