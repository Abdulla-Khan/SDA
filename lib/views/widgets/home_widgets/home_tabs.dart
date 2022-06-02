import 'package:container_tab_indicator/container_tab_indicator.dart';
import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';

class Home_Tab extends StatelessWidget {
  const Home_Tab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: TabBar(
        isScrollable: true,
        labelColor: Colors.white,
        unselectedLabelColor: Colors.grey,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: ContainerTabIndicator(
          color: yellow,
          width: 16,
          height: 16,
          radius: BorderRadius.circular(10.0),
          padding: const EdgeInsets.only(left: 40, top: -12),
          borderWidth: 4.0,
          borderColor: black,
        ),
        tabs: const [
          Tab(
            text: "Popular",
          ),
          Tab(
            text: "Week",
          ),
          Tab(
            text: "Month",
          ),
          Tab(
            text: 'Year',
          ),
          Tab(
            icon: Icon(Icons.graphic_eq),
          )
        ],
      ),
    );
  }
}
