import 'dart:io';

import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';
import '../../profile_view.dart';
import '../profile_widgets/model_button.dart';

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
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(0),
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Column(
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
                        color: grey, borderRadius: BorderRadius.circular(24)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        Text(
                          '\$${list[index].hour}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const Text(
                          'Hour',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        const Spacer(),
                        const Divider(
                          color: Color.fromARGB(255, 151, 149, 149),
                          height: 10,
                          thickness: 1,
                        ),
                        const Spacer(),
                        Text(
                          '\$${list[index].wek}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const Text(
                          'Week',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ProfileView(
                                  i: index,
                                ))),
                    child: Container(
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
                          Fav_Button(s: s),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              height: s.height * 0.06,
                              width: s.width / 2.7,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(15),
                                  topLeft: Radius.circular(15),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '${list[index].collab}k Collaborations',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    list[index].name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Text(
                    list[0].state,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: s.height * 0.01),
              Padding(
                padding: EdgeInsets.only(right: s.width / 9.1),
                child: ModelButton(s: s, btn1: 'Portfolio', btn2: 'Hire Model'),
              ),
              const Divider(
                color: Color.fromARGB(255, 131, 128, 128),
                height: 50,
                thickness: 1,
              ),
            ],
          );
        });
  }
}

class Fav_Button extends StatefulWidget {
  const Fav_Button({
    Key? key,
    required this.s,
  }) : super(key: key);

  final Size s;

  @override
  State<Fav_Button> createState() => _Fav_ButtonState();
}

class _Fav_ButtonState extends State<Fav_Button> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.s.height * 0.09,
      width: widget.s.width / 11,
      margin: const EdgeInsets.only(left: 10),
      decoration:
          const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: InkWell(
        onTap: () {
          setState(() {
            selected = !selected;
            print(selected);
          });
        },
        child: Icon(
          Icons.favorite,
          color: selected ? Color.fromARGB(255, 255, 17, 0) : red,
        ),
      ),
    );
  }
}
