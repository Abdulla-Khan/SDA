import 'package:flutter/material.dart';
import 'package:social/views/constants/color_constants.dart';
import '../model/user_model.dart';
import 'widgets/home_widgets/home_card.dart';
import 'widgets/home_widgets/home_tabs.dart';

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: black,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding:
                EdgeInsets.only(left: s.width * 0.05, right: s.width * 0.05),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
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
                            color: grey,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Icon(
                          Icons.search_rounded,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  const Home_Tab(),
                  HireCard(s: s, list: list),
                ]),
          ),
        ),
      ),
    );
  }
}
