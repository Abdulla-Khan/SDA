import 'package:container_tab_indicator/container_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:social/views/profile_view.dart';

import '../model/user_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    List list = UserModel.user;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 37, 37, 37),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: s.height * 0.07,
              left: s.width * 0.05,
              right: s.width * 0.05),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Explore',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Container(
                      height: s.height * 0.04,
                      width: s.width * 0.14,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 72, 72, 72),
                          borderRadius: BorderRadius.circular(30)),
                      child: Icon(
                        Icons.search_rounded,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                DefaultTabController(
                  length: 5,
                  child: TabBar(
                    isScrollable: true,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: ContainerTabIndicator(
                      color: Colors.yellow,
                      width: 16,
                      height: 16,
                      radius: BorderRadius.circular(10.0),
                      padding: EdgeInsets.only(left: 40, top: -12),
                      borderWidth: 4.0,
                      borderColor: Color.fromARGB(255, 37, 37, 37),
                    ),
                    tabs: [
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
                ),
                HireCard(s: s, list: list),
              ]),
        ),
      ),
    );
  }
}

class HireCard extends StatelessWidget {
  const HireCard({
    Key? key,
    required this.s,
    required this.list,
  }) : super(key: key);

  final Size s;
  final List list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(0),
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => ProfileView(
                          i: index,
                        ))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: s.width * 0.01),
                      height: s.height / 4,
                      width: s.width / 6,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 72, 72, 72),
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(),
                          Text(
                            '\$${list[index].hour}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            'Hour',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          Spacer(),
                          Divider(
                            color: Color.fromARGB(255, 151, 149, 149),
                            height: 10,
                            thickness: 1,
                          ),
                          Spacer(),
                          Text(
                            '\$${list[index].wek}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            'Week',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    Container(
                      height: s.height / 4,
                      width: s.width / 1.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage(
                                '${list[index].profileurl}',
                              ),
                              fit: BoxFit.cover)),
                      child: Stack(
                        children: [
                          Container(
                            height: s.height * 0.09,
                            width: s.width / 11,
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Icon(
                              Icons.favorite,
                              color: Color.fromARGB(255, 156, 52, 44),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              height: s.height * 0.06,
                              width: s.width / 2.7,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(15),
                                  topLeft: Radius.circular(15),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '${list[index].collab}k Collaborations',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      list[index].name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Text(
                      list[0].state,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(height: s.height * 0.01),
                Padding(
                  padding: EdgeInsets.only(right: s.width / 9.1),
                  child:
                      ModelButton(s: s, btn1: 'Portfolio', btn2: 'Hire Model'),
                ),
                Divider(
                  color: Color.fromARGB(255, 131, 128, 128),
                  height: 50,
                  thickness: 1,
                ),
              ],
            ),
          );
        });
  }
}
