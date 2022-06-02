import 'package:flutter/material.dart';

class Image_View extends StatelessWidget {
  const Image_View({
    Key? key,
    required this.s,
    required this.list,
    required this.i,
  }) : super(key: key);

  final Size s;
  final List list;
  final int i;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: s.height / 3,
            width: s.width * .49,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(list[i].img[0]), fit: BoxFit.cover)),
          ),
          Column(
            children: [
              Container(
                height: s.height / 4,
                width: s.width * .41,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(list[i].img[1]), fit: BoxFit.cover)),
              ),
              Container(
                height: s.height / 4.1,
                width: s.width * .41,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(list[i].img[2]), fit: BoxFit.cover)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
