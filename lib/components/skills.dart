import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          color: Colors.white,
          child: const Text(
            "My Skills",
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
          ),
        ),
        Container(
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : (context.screenWidth * 0.7) / 3,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
          padding: const EdgeInsets.all(28),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Programming language",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
              ),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Chip(
                    label: Text("Dart"),
                    labelStyle: TextStyle(color: Colors.red),
                    side: BorderSide(color: Colors.red),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text("Java"),
                    labelStyle: TextStyle(color: Colors.red),
                    side: BorderSide(color: Colors.red),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text("JavaScript"),
                    labelStyle: TextStyle(color: Colors.red),
                    side: BorderSide(color: Colors.red),
                    backgroundColor: Colors.white,
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : (context.screenWidth * 0.7) / 3,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
          padding: const EdgeInsets.all(28),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Frameworks",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
              ),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Chip(
                    label: Text("Fluter"),
                    labelStyle: TextStyle(color: Colors.red),
                    side: BorderSide(color: Colors.red),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text("Dart"),
                    labelStyle: TextStyle(color: Colors.red),
                    side: BorderSide(color: Colors.red),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text("Dart"),
                    labelStyle: TextStyle(color: Colors.red),
                    side: BorderSide(color: Colors.red),
                    backgroundColor: Colors.white,
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : (context.screenWidth * 0.7) / 3,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
          padding: const EdgeInsets.all(28),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Other Tools",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
              ),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Chip(
                    label: Text("Dart"),
                    labelStyle: TextStyle(color: Colors.red),
                    side: BorderSide(color: Colors.red),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text("Dart"),
                    labelStyle: TextStyle(color: Colors.red),
                    side: BorderSide(color: Colors.red),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text("Dart"),
                    labelStyle: TextStyle(color: Colors.red),
                    side: BorderSide(color: Colors.red),
                    backgroundColor: Colors.white,
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
