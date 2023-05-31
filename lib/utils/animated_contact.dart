import 'package:flutter/material.dart';

class AnimatedContact extends StatefulWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  const AnimatedContact({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  State<AnimatedContact> createState() => _AnimatedContactState();
}

class _AnimatedContactState extends State<AnimatedContact> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (value) => setState(() {
        isHovering = value;
      }),
      child: AnimatedContainer(
        margin: const EdgeInsets.only(top: 8.0),
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
            color: isHovering ? Colors.grey.shade300 : Colors.white,
            border: Border.all(
              color: isHovering ? Colors.grey : Colors.white,
            ),
            borderRadius: BorderRadius.circular(
              12.0,
            )),
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Card(
                child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                widget.icon,
                size: 20.0,
              ),
            )),
            const SizedBox(
              width: 12.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w500),
                ),
                Text(widget.subtitle),
              ],
            )
          ],
        ),
      ),
    );
  }
}
