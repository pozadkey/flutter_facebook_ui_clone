import 'package:flutter/material.dart';

// Define a ColorPalette class for storing color constants.
class ColorPallette {
  // Define a constant color for the scaffold background.
  static const Color scaffold = Color(0xFFF0F2F5);

  // Define a constant color for Facebook's primary blue color.
  static const Color facebookBlue = Color(0xFF1777F2);

  // Define a linear gradient for creating a room button.
  static const LinearGradient createRoomGradient = LinearGradient(
    colors: [Color(0xFF496AE1), Color(0xFFCE48B1)],
  );

  // Define a constant color for Facebook's primary blue color.
  static const Color online = Color(0xFF4BCB1F);

  // Define a linear gradient for story containers.
  static const LinearGradient storyGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, Colors.black26],
  );
}
