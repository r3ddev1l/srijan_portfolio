import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:srijan_portfolio/components/social_row.dart';
import 'package:srijan_portfolio/utils/animated_contact.dart';
import 'package:velocity_x/velocity_x.dart';
import '../constants/ui_constants.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: context.screenWidth < 900
          ? context.screenHeight * 0.9
          : context.screenWidth < 1600
              ? context.screenWidth * 0.3
              : context.screenWidth * 0.2,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          Image.asset(
            devImage,
            height: 156.0,
          ),
          const Text("DEV"),
          const Text("DEV"),
          const Wrap(
            alignment: WrapAlignment.center,
            children: [
              Chip(
                label: Text("Mobile App Developer"),
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
                backgroundColor: Colors.green,
                padding: EdgeInsets.all(8.0),
              ),
              SizedBox(
                height: 24,
              ),
              Chip(
                label: Text("Mobile App Developer"),
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
                backgroundColor: Colors.green,
                padding: EdgeInsets.all(8.0),
              ),
            ],
          ),
          const Divider(),
          // Container(
          //   child: const Row(
          //     children: [
          //       Card(
          //           child: Padding(
          //         padding: EdgeInsets.all(12.0),
          //         child: Icon(
          //           FontAwesomeIcons.githubAlt,
          //           size: 20.0,
          //         ),
          //       )),
          //       SizedBox(
          //         width: 12.0,
          //       ),
          //       Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Text("Github"),
          //           Text("RedDevil"),
          //         ],
          //       )
          //     ],
          //   ),
          // ),
          //github
          AnimatedContact(
            icon: FontAwesomeIcons.githubAlt,
            title: 'Github',
            subtitle: 'RedDevil',
            onTap: () {},
          ),

          //linkedin
          AnimatedContact(
            icon: FontAwesomeIcons.linkedinIn,
            title: 'Linkedin',
            subtitle: 'RedDevil',
            onTap: () {},
          ),
          const SocialRow()
        ],
      ),
    );
  }
}
