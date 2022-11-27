import 'package:flutter/cupertino.dart';

class SportsData {
  SportsData(
      {required this.id,
      required this.sportsTitle,
      required this.sportsNews,
      required this.sportsImage,
      required this.sportsIcon});

  final int id;
  final String sportsTitle;
  final String sportsNews;
  final AssetImage sportsImage;
  final AssetImage sportsIcon;
}

final List<SportsData> allSports = [
  SportsData(
      id: 1,
      sportsTitle: "Baseball",
      sportsNews: "Here is some Baseball news!",
      sportsImage: AssetImage("assets/images/img_baseball.jpg"),
      sportsIcon: AssetImage("assets/images/icon_baseball.jpeg")),
  SportsData(
      id: 2,
      sportsTitle: "Badminton",
      sportsNews: "Here is some Badminton news!",
      sportsImage: AssetImage("assets/images/img_badminton.jpg"),
      sportsIcon: AssetImage("assets/images/icon_badminton.jpeg")),
  SportsData(
      id: 3,
      sportsTitle: "Basketball",
      sportsNews: "Here is some Basketball news!",
      sportsImage: AssetImage("assets/images/img_basketball.jpg"),
      sportsIcon: AssetImage("assets/images/icon_basketball.jpeg")),
  SportsData(
      id: 4,
      sportsTitle: "Bowling",
      sportsNews: "Here is some Bowling news!",
      sportsImage: AssetImage("assets/images/img_vowling.jpg"),
      sportsIcon: AssetImage("assets/images/icon_bowling.jpeg")),
  SportsData(
      id: 5,
      sportsTitle: "Cycling",
      sportsNews: "Here is some Cycling news!",
      sportsImage: AssetImage("assets/images/img_cycling.jpg"),
      sportsIcon: AssetImage("assets/images/icon_cycling.jpeg")),
  SportsData(
      id: 6,
      sportsTitle: "Golf",
      sportsNews: "Here is some Golf news!",
      sportsImage: AssetImage("assets/images/img_golf.jpg"),
      sportsIcon: AssetImage("assets/images/icon_golf.jpeg")),
  SportsData(
      id: 7,
      sportsTitle: "Running",
      sportsNews: "Here is some Running news!",
      sportsImage: AssetImage("assets/images/img_running.jpg"),
      sportsIcon: AssetImage("assets/images/icon_running.jpeg")),
  SportsData(
      id: 8,
      sportsTitle: "Soccer",
      sportsNews: "Here is some Soccer news!",
      sportsImage: AssetImage("assets/images/img_soccer.jpg"),
      sportsIcon: AssetImage("assets/images/icon_soccer.jpeg")),
  SportsData(
      id: 9,
      sportsTitle: "Swimming",
      sportsNews: "Here is some Swimming news!",
      sportsImage: AssetImage("assets/images/img_swimming.jpg"),
      sportsIcon: AssetImage("assets/images/icon_swimming.jpeg")),
  SportsData(
      id: 10,
      sportsTitle: "Table Tennis",
      sportsNews: "Here is some Table Tennis news!",
      sportsImage: AssetImage("assets/images/img_tabletennis.jpg"),
      sportsIcon: AssetImage("assets/images/icon_tabletennis.jpeg")),
];
