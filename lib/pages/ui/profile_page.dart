import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import 'package:web_profile/business_logic/controllers/menu_controller.dart';
import 'package:web_profile/config/constants/responsive_breakpoints.dart';
import 'package:web_profile/pages/widgets/sections/contact_section.dart';
import 'package:web_profile/pages/widgets/sections/experience_section.dart';
import 'package:web_profile/pages/widgets/sections/footer.dart';
import 'package:web_profile/pages/widgets/sections/header.dart';
import 'package:web_profile/pages/widgets/utils/max_width_container.dart';
import 'package:web_profile/pages/widgets/sections/profile_image.dart';
import 'package:web_profile/pages/widgets/sections/profile_info.dart';
import 'package:web_profile/pages/widgets/utils/responsive_layout.dart';
import 'package:web_profile/pages/widgets/sections/rockers_project_section.dart';
import 'package:web_profile/pages/widgets/utils/side_menu.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final AutoScrollController _autoScrollController = AutoScrollController();
  final MenuController _menuController = MenuController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _menuController.scaffoldKey,
      drawer: SideMenu(
        autoScrollController: _autoScrollController,
      ),
      body: SingleChildScrollView(
        controller: _autoScrollController,
        padding: EdgeInsets.all(kDefaultPadding),
        child: MaxWidthContainer(
          child: ResponsiveLayout(
            mobileScreen: MobileContent(
              autoScrollController: _autoScrollController,
              menuController: _menuController,
            ),
            tabletScreen: TabletContent(
              autoScrollController: _autoScrollController,
              menuController: _menuController,
            ),
            desktopScreen: DesktopContent(
              autoScrollController: _autoScrollController,
              menuController: _menuController,
            ),
          ),
        ),
      ),
    );
  }
}

class MobileContent extends StatelessWidget {
  final AutoScrollController autoScrollController;
  final MenuController menuController;

  const MobileContent({
    Key? key,
    required this.autoScrollController,
    required this.menuController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StickyHeader(
      header: Header(
        autoScrollController: autoScrollController,
        menuController: menuController,
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: kSpaceBetweenSections),
          AutoScrollTag(
            key: ValueKey(0),
            controller: autoScrollController,
            index: 0,
            child: ProfileImage(),
          ),
          SizedBox(height: kSpaceBetweenSections),
          ProfileInfo(),
          SizedBox(height: kSpaceBetweenSections),
          AutoScrollTag(
            key: ValueKey(1),
            controller: autoScrollController,
            index: 1,
            child: ExperienceSection(),
          ),
          SizedBox(height: kSpaceBetweenSections),
          AutoScrollTag(
            key: ValueKey(2),
            controller: autoScrollController,
            index: 2,
            child: RockersProjectSection(),
          ),
          SizedBox(height: kSpaceBetweenSections),
          AutoScrollTag(
            key: ValueKey(3),
            controller: autoScrollController,
            index: 3,
            child: ContactSection(),
          ),
          SizedBox(height: kSpaceBetweenSections),
          Footer(),
        ],
      ),
    );
  }
}

class TabletContent extends StatelessWidget {
  final AutoScrollController autoScrollController;
  final MenuController menuController;

  const TabletContent({
    Key? key,
    required this.autoScrollController,
    required this.menuController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StickyHeader(
      header: Header(
        autoScrollController: autoScrollController,
        menuController: menuController,
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: kSpaceBetweenSections),
          AutoScrollTag(
            key: ValueKey(0),
            controller: autoScrollController,
            index: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProfileImage(),
                SizedBox(width: kSpaceBetweenSections * 2),
                Expanded(child: ProfileInfo()),
              ],
            ),
          ),
          SizedBox(height: kSpaceBetweenSections),
          AutoScrollTag(
            key: ValueKey(1),
            controller: autoScrollController,
            index: 1,
            child: ExperienceSection(),
          ),
          SizedBox(height: kSpaceBetweenSections),
          AutoScrollTag(
            key: ValueKey(2),
            controller: autoScrollController,
            index: 2,
            child: RockersProjectSection(),
          ),
          SizedBox(height: kSpaceBetweenSections),
          AutoScrollTag(
            key: ValueKey(3),
            controller: autoScrollController,
            index: 3,
            child: ContactSection(),
          ),
          SizedBox(height: kSpaceBetweenSections),
          Footer(),
        ],
      ),
    );
  }
}

class DesktopContent extends StatelessWidget {
  final AutoScrollController autoScrollController;
  final MenuController menuController;

  const DesktopContent({
    Key? key,
    required this.autoScrollController,
    required this.menuController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StickyHeader(
      header: Header(
        autoScrollController: autoScrollController,
        menuController: menuController,
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: kSpaceBetweenSections),
          AutoScrollTag(
            key: ValueKey(0),
            controller: autoScrollController,
            index: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProfileImage(),
                SizedBox(width: kSpaceBetweenSections * 2),
                Expanded(child: ProfileInfo()),
              ],
            ),
          ),
          SizedBox(height: kSpaceBetweenSections),
          AutoScrollTag(
            key: ValueKey(1),
            controller: autoScrollController,
            index: 1,
            child: ExperienceSection(),
          ),
          SizedBox(height: kSpaceBetweenSections),
          AutoScrollTag(
            key: ValueKey(2),
            controller: autoScrollController,
            index: 2,
            child: RockersProjectSection(),
          ),
          SizedBox(height: kSpaceBetweenSections),
          AutoScrollTag(
            key: ValueKey(3),
            controller: autoScrollController,
            index: 3,
            child: ContactSection(),
          ),
          SizedBox(height: kSpaceBetweenSections),
          Footer(),
        ],
      ),
    );
  }
}
