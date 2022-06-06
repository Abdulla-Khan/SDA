class UserApiModel {
  int? id;
  String? name;
  String? state;
  String? country;
  String? photos;
  String? hour;
  String? week;
  String? collaborations;
  String? profile;

  UserApiModel(
      {this.id,
      this.name,
      this.state,
      this.country,
      this.photos,
      this.hour,
      this.week,
      this.collaborations,
      this.profile});

  UserApiModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    state = json['state'];
    country = json['country'];
    photos = json['photos'];
    hour = json['hour'];
    week = json['week'];
    collaborations = json['collaborations'];
    profile = json['profile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['state'] = this.state;
    data['country'] = this.country;
    data['photos'] = this.photos;
    data['hour'] = this.hour;
    data['week'] = this.week;
    data['collaborations'] = this.collaborations;
    data['profile'] = this.profile;
    return data;
  }
}
