import 'package:flutter/material.dart';
import 'package:web_app/components/default_button.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'components/socal_card.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // this height only for demo
      // height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg_img_2.png"),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: "Give your Feedback",
            subTitle:
                "Feed back is most important everywhere, Don't forget to give one.",
            color: Color(0xFF07E24A),
          ),
          ContactBox()
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110),
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      padding: EdgeInsets.all(kDefaultPadding * 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocalCard(
                color: Color(0xFFC6C6C6),
                iconSrc: "assets/images/Github.png",
                name: 'GitHub',
                press: () {
                  launch("https://github.com/Deep-De-coder");
                },
              ),
              SocalCard(
                color: Color(0xFF2867B2),
                iconSrc: "assets/images/Linkedin_logo.png",
                name: 'LinkedIn',
                press: () {
                  launch("https://www.linkedin.com/in/deep-shahane-906b041b0/");
                },
              ),
              SocalCard(
                color: Color(0xFFEEEEEE),
                iconSrc: "assets/images/Gmail_logo.png",
                name: 'Gmail',
                press: () {
                  launch("mailto:esotericdeep@gmail.com");
                },
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 2),
          ContactForm(),
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Your Name",
                hintText: "Enter Your Name",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Email Address",
                hintText: "Enter your email address",
              ),
            ),
          ),
          // SizedBox(
          //   width: 470,
          //   child: TextFormField(
          //     onChanged: (value) {},
          //     decoration: InputDecoration(
          //       labelText: "Give your Feedback here",
          //       hintText: "Type your feedback here",
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   width: 470,
          //   child: TextFormField(
          //     onChanged: (value) {},
          //     decoration: InputDecoration(
          //       labelText: "Any Suggestions",
          //       hintText: "Type your suggetion here",
          //     ),
          //   ),
          // ),
          SizedBox(
            // height: 300,
            // TextField by default cover the height, i tryed to fix this problem but i cant
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Feedback",
                hintText: "Give your Feedback here",
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: DefaultButton(
                imageSrc: "assets/images/contact_icon.png",
                text: "Send!",
                press: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
