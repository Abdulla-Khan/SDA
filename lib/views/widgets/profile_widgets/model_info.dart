import 'package:flutter/material.dart';

class Model_Info extends StatelessWidget {
  const Model_Info({
    Key? key,
    required this.list,
    required this.i,
    required this.s,
  }) : super(key: key);

  final List list;
  final int i;
  final Size s;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.people),
        Text(
          ' ${list[i].collaborations} ',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const Text(
          'Collaborations',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(width: s.width * .01),
        Container(
          height: 23,
          width: 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 151, 149, 149),
          ),
        ),
        SizedBox(width: s.width * .01),
        const Icon(Icons.photo_rounded),
        Text(
          ' ${list[i].photos} ',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const Text(
          'Photos',
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
