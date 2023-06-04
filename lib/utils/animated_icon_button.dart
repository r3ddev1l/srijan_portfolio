import 'package:flutter/material.dart';

class AnimatedIconButton extends StatefulWidget {
  final IconData icon;

  final VoidCallback onTap;
  const AnimatedIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  State<AnimatedIconButton> createState() => _AnimatedIconButtonState();
}

class _AnimatedIconButtonState extends State<AnimatedIconButton> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (value) => setState(() {
        isHovering = value;
      }),
      child: AnimatedContainer(
        margin: const EdgeInsets.all(6.0),
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
            color: isHovering ? Colors.grey.shade300 : Colors.white,
            border: Border.all(
              color: isHovering ? Colors.grey : Colors.white,
            ),
            borderRadius: BorderRadius.circular(
              12.0,
            )),
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Icon(
                widget.icon,
                size: 28.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
