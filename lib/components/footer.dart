import 'package:flutter/material.dart';
import 'package:srijan_portfolio/components/social_row.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.all(20.0),
      child: const Column(
        children: [
          SocialRow(),
          SizedBox(
            height: 12,
          ),
          Text("RedDevs"),
        ],
      ),
    );
  }
}
