import 'package:flutter/material.dart';

// Define a custom CircleButton widget.
class CircleButton extends StatelessWidget {
  // Declare the required properties for the CircleButton.
  final IconData icon;
  final double iconSize;
  final Function()? onPressed;

  const CircleButton({
    Key? key,
    required this.icon,
    required this.iconSize,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Add some margin around the button for spacing.
      margin: const EdgeInsets.all(6.0),

      // Apply a circular shape to the button using BoxDecoration.
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),

      // Create an IconButton with the specified icon, size, and color.
      child: IconButton(
        icon: Icon(icon),
        iconSize: iconSize,
        color: Colors.black,
        onPressed: onPressed,
      ),
    );
  }
}
