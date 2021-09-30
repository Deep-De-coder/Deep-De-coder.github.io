import 'package:flutter/material.dart';
import 'package:web_app/components/default_button.dart';
import 'package:web_app/components/my_outline_button.dart';
import 'package:web_app/constants.dart';

import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';
import 'dart:html' as html;

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      "I am a third year Computer Science student at Vidyalankar Institute Of Technology. I have intrest in different domains and fields. I love to explore more in every field. ",
                ),
              ),
              ExperienceCard(numOfExp: "07"),
              Expanded(
                child: AboutSectionText(
                  text:
                      "I have done various internship in lockdown period. like in field of python, java, web developmenet. I have also learned app development and now I'm intrested to internship in data science domain. ",
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // MyOutlineButton(
              //   imageSrc: "assets/images/hand.png",
              //   text: "Hire Me!",
              //   press: () {},
              // ),
              SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "Open CV",
                press: () {
                  html.window.open("<assets/images/Deep_Resume.pdf>", ".pdf");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
