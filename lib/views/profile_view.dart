// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:container_tab_indicator/container_tab_indicator.dart';

import 'package:flutter/material.dart';
import 'package:social/model/user_model.dart';

class ProfileView extends StatelessWidget {
  int i;

  ProfileView({Key? key, required this.i}) : super(key: key);
  List list = UserModel.user;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(
                    top: s.height * 0.04,
                    left: s.width * 0.05,
                    right: s.width * 0.05),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: s.height * 0.04,
                        width: s.width * 0.15,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 72, 72, 72),
                            borderRadius: BorderRadius.circular(30)),
                        child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(
                              Icons.arrow_back_ios_new,
                              size: 18,
                            )),
                      ),
                      Icon(Icons.more_vert_outlined),
                    ],
                  ),
                  SizedBox(height: s.height * 0.03),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 70.0,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(list[i].profileurl),
                      radius: 65.0,
                    ),
                  ),
                  SizedBox(height: s.height * 0.01),
                  Text(
                    list[i].name,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                  SizedBox(height: s.height * 0.005),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_pin,
                        size: 16,
                        color: Color.fromARGB(255, 151, 149, 149),
                      ),
                      Text(
                        '${list[i].state}, US',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 151, 149, 149),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: s.height * 0.022),
                  ModelButton(
                    s: s,
                    btn1: 'Hire Model',
                    btn2: 'Message',
                  ),
                  SizedBox(height: s.height * .02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.people),
                      Text(
                        ' ${list[i].collab} ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        'Collaborations',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: s.width * .01),
                      Container(
                        height: 23,
                        width: 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 151, 149, 149),
                        ),
                      ),
                      SizedBox(width: s.width * .01),
                      Icon(Icons.photo_rounded),
                      Text(
                        ' ${list[i].photos} ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        'Photos',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Divider(
                    color: Color.fromARGB(255, 151, 149, 149),
                    height: 10,
                    thickness: 2,
                  ),
                  DefaultTabController(
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
                        padding: EdgeInsets.only(left: 40, top: -12),
                        borderWidth: 4.0,
                        borderColor: Colors.black,
                      ),
                      tabs: [
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
                  ),
                  SizedBox(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: s.height / 3,
                          width: s.width * .49,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(list[i].img[0]),
                                  fit: BoxFit.cover)),
                        ),
                        Column(
                          children: [
                            Container(
                              height: s.height / 4,
                              width: s.width * .41,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(list[i].img[1]),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              height: s.height / 4.1,
                              width: s.width * .41,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(list[i].img[2]),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ]))));
  }
}

class ModelButton extends StatelessWidget {
  const ModelButton(
      {Key? key, required this.s, required this.btn1, required this.btn2})
      : super(key: key);

  final Size s;
  final String btn1, btn2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: s.height * 0.06,
          width: s.width * 0.37,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 1, color: Colors.white)),
          child: Center(
            child: Text('Hire Model',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: .5,
                    fontWeight: FontWeight.w500)),
          ),
        ),
        SizedBox(width: s.width * 0.05),
        Container(
          height: s.height * 0.06,
          width: s.width * 0.37,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black),
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              'Message',
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: .3,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );
  }
}
