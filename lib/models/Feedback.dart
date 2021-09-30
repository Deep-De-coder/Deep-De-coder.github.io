import 'package:flutter/material.dart';

class Feedback {
  final String name, review, userPic;
  final int id;
  final Color color;

  Feedback({this.name, this.review, this.userPic, this.id, this.color});
}

// List of demo feedbacks
List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "Hack the Space",
    review:
        "Hack the Space.\n Our team received Special Mention. It was a national level hackathon conducted by GDSC's for students, we created education app here containing quiz, chatting and other functions also ",
    userPic: "assets/images/people.png",
    color: Color(0xFFFFF3DD),
  ),
  Feedback(
    id: 2,
    name: "Github and IncubateIND",
    review:
        "Github and IncubateIND \n Our team created an app for education purpose. Main purpose was to make online education easy and attractive.we received Special Mention",
    userPic: "assets/images/people.png",
    color: Color(0xFFD9FFFC),
  ),
  Feedback(
    id: 3,
    name: "V-hackathon",
    review:
        "V-hackathon \n It was my first hackathon where I helpd the team to create an app for our college students. I worked on UI design. We received Special Mention. ",
    userPic: "assets/images/people.png",
    color: Color(0xFFFFE0E0),
  ),
];

// String review = 'We received special mention In Hackathon';
