import 'package:flutter/material.dart';

// Import the User model and ProfileAvatar widget.
import '../models/models.dart';
import 'profile_avatar.dart';
import 'responsive.dart';

// Define a custom CreatePostContainer widget.
class CreatePostContainer extends StatelessWidget {
  // Declare the current user for the post.
  final User currentUser;

  // Constructor for the CreatePostContainer widget.
  // It takes a required parameter: currentUser.
  const CreatePostContainer({
    Key? key,
    required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Determine if the app is running on a desktop platform.
    final bool isDesktop = Responsive.isDesktop(context);

    return Card(
      // Set margin and elevation based on the platform (desktop or mobile).
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5.0 : 0.0),
      elevation: isDesktop ? 1.0 : 0.0,

      // Set card shape to have rounded corners on desktop.
      shape: isDesktop
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
          : null,

      child: Container(
        padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
        color: Colors.white,
        child: Column(
          children: [
            // Create a row for the user's profile picture and a text input field.
            Row(
              children: [
                ProfileAvatar(imageUrl: currentUser.imageUrl),
                const SizedBox(width: 8.0),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'What\'s on your mind?',
                    ),
                  ),
                )
              ],
            ),

            // Add a divider below the text input field.
            const Divider(height: 10.0, thickness: 0.5),

            // Create buttons for posting live video, photos, and rooms.
            SizedBox(
              height: 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(
                    icon: const Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    label: const Text('Live'),
                    onPressed: () {},
                  ),
                  const VerticalDivider(width: 8.0),
                  TextButton.icon(
                    icon: const Icon(
                      Icons.photo_library,
                      color: Colors.green,
                    ),
                    label: const Text('Photo'),
                    onPressed: () {},
                  ),
                  const VerticalDivider(width: 8.0),
                  TextButton.icon(
                    icon: const Icon(
                      Icons.video_call,
                      color: Colors.purpleAccent,
                    ),
                    label: const Text('Room'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
