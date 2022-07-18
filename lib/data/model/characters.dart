import 'dart:convert';

class Character {
  late int charId;
  late String name;
  late String nickName;
  late String image;
  late List<dynamic> jobs;
  late String statusIfDeadOrAlive;
  late List<dynamic> appearanceOfSeasons;
  late String acotrName;
  late String categoryForTwoSerise;
  late List<dynamic> betterCallSoulAppearance;

  Character.fromJason(Map<String, dynamic> json) {
    charId = json['char_id'];
    name = json['name'];
    nickName = json['nickname'];
    image = json['img'];
    jobs = json['occupation'];
    statusIfDeadOrAlive = json['status'];
    appearanceOfSeasons = json['appearance'];
    acotrName = json['portrayed'];
    categoryForTwoSerise = json['category'];
    betterCallSoulAppearance = json['better_call_saul_appearance'];
  }
}
