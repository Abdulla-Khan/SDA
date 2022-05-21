// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 40, left: 18, right: 18),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 72, 72, 72),
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 18,
                ),
              ),
              Icon(Icons.more_vert_outlined),
            ],
          ),
          SizedBox(height: 20),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 70.0,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/sign.jpg'),
              radius: 65.0,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Gal Gadot',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.location_pin,
                size: 16,
                color: Color.fromARGB(255, 151, 149, 149),
              ),
              Text(
                'New York, US',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 151, 149, 149),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 130,
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
              SizedBox(width: 20),
              Container(
                height: 50,
                width: 130,
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
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.people),
              Text(
                ' 5k ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                'Collaborations',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(width: 5),
              Container(
                height: 23,
                width: 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 151, 149, 149),
                ),
              ),
              SizedBox(width: 5),
              Icon(Icons.photo_rounded),
              Text(
                ' 285 ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                'Photos',
                style: TextStyle(fontSize: 18),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
