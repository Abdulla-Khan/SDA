import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:social/model/user_model.dart';
import 'package:social/views/constants/color_constants.dart';
import 'package:social/views/widgets/profile_widgets/image_view.dart';
import 'package:social/views/widgets/profile_widgets/model_button.dart';
import 'package:social/views/widgets/profile_widgets/profile_tabs.dart';
import 'package:social/views/widgets/shimmer_effect.dart';

import 'widgets/profile_widgets/model_info.dart';

class ProfileView extends StatelessWidget {
  final int i;
  Future future;
  ProfileView({Key? key, required this.i, required this.future})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: black,
          body: FutureBuilder(
              future: future,
              builder: (context, AsyncSnapshot snapshot) {
                return snapshot.hasData
                    ? SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: s.width * 0.05, right: s.width * 0.05),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: s.height * 0.04,
                                    width: s.width * 0.15,
                                    decoration: BoxDecoration(
                                        color: grey,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: IconButton(
                                        onPressed: () => Navigator.pop(context),
                                        icon: const Icon(
                                          Icons.arrow_back_ios_new,
                                          size: 18,
                                        )),
                                  ),
                                  const Icon(Icons.more_vert_outlined),
                                ],
                              ),
                              SizedBox(height: s.height * 0.03),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 70.0,
                                child: CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(snapshot.data![i].profile),
                                  radius: 65.0,
                                ),
                              ),
                              SizedBox(height: s.height * 0.01),
                              Text(
                                snapshot.data[i].name,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28),
                              ),
                              SizedBox(height: s.height * 0.005),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.location_pin,
                                    size: 16,
                                    color: Color.fromARGB(255, 151, 149, 149),
                                  ),
                                  Text(
                                    '${snapshot.data![i].state}, ${snapshot.data![i].country} ',
                                    style: const TextStyle(
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
                              Model_Info(list: snapshot.data!, i: i, s: s),
                              const Divider(
                                color: Color.fromARGB(255, 151, 149, 149),
                                height: 10,
                                thickness: 2,
                              ),
                              const Profile_Tabs(),
                              // Image_View(s: s, list: list, i: i)
                            ])))
                    : Loader(s: s);
              })),
    );
  }
}
