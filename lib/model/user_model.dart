class UserModel {
  String name, state, profileurl;
  double collab, photos, hour, wek;
  List img;

  UserModel(
      {required this.collab,
      required this.img,
      required this.name,
      required this.photos,
      required this.state,
      required this.hour,
      required this.wek,
      required this.profileurl});

  static List user = [
    UserModel(
        name: 'Alishba',
        state: 'Karachi',
        profileurl: 'assets/profile1.jpeg',
        collab: 3,
        photos: 322,
        hour: 50,
        wek: 25,
        img: [
          'assets/model1(a).jpg',
          'assets/model1(b).jpg',
          'assets/model1(c).jpg'
        ]),
    UserModel(
        name: 'Saifullah',
        state: 'Lahore',
        profileurl: 'assets/profile2.jpg',
        collab: 3,
        photos: 22,
        hour: 20,
        wek: 70,
        img: [
          'assets/model2(a).jpg',
          'assets/model2(b).jpg',
          'assets/model2(c).jpg'
        ]),
    UserModel(
        name: 'Tena Durrani',
        state: 'Texas',
        profileurl: 'assets/profile3.jpg',
        collab: 33,
        photos: 32,
        hour: 50,
        wek: 25,
        img: [
          'assets/model3(a).jpg',
          'assets/model3(b).jpg',
          'assets/model3(c).jpg'
        ])
  ];
}
