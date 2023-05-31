import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import 'package:velocity_x/velocity_x.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth < 900
          ? context.screenHeight * 0.9
          : context.screenHeight * 0.5,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Education",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Timeline.tileBuilder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              builder: TimelineTileBuilder.fromStyle(
                itemCount: 4,
                contentsAlign: ContentsAlign.alternating,
                contentsBuilder: (context, index) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "31 May 2023",
                          style: TextStyle(fontSize: 12, color: Colors.red),
                        ),
                        const Text(
                          "Brief Event Data adhsdjkfjksdhfjkhasdkjfhjkasdfhjkhasdjkh",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Brief Event Data adhsdjkfjksdhfjkhasdkjfhjkasdfhjkhasdjkh",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
