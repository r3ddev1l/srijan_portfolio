import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FaIcon(
          FontAwesomeIcons.facebook,
        ),
        FaIcon(
          FontAwesomeIcons.instagram,
        ),
        FaIcon(
          FontAwesomeIcons.twitter,
        )
      ],
    );
  }
}
