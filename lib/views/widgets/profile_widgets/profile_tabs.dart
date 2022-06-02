import 'package:container_tab_indicator/container_tab_indicator.dart';
import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';

class Profile_Tabs extends StatelessWidget {
  const Profile_Tabs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.grey,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: ContainerTabIndicator(
          color: Colors.yellow,
          width: 16,
          height: 16,
          radius: BorderRadius.circular(10.0),
          padding: const EdgeInsets.only(left: 40, top: -12),
          borderWidth: 4.0,
          borderColor: black,
        ),
        tabs: const [
          Tab(
            text: "Portfolio",
          ),
          Tab(
            text: "Life Style",
          ),
          Tab(
            text: "Colloboration",
          ),
        ],
      ),
    );
  }
}
