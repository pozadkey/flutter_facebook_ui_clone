// Import the 'user_model.dart' file to access the User class.
import 'user_model.dart';

// Define a Post class representing a social media post.
class Post {
  // Declare fields to store information about the post.
  final User user;
  final String caption;
  final String timeAgo;
  final String imageUrl;
  final int likes;
  final int comments;
  final int shares;

  // Constructor for the Post class.
  // It takes multiple required parameters to represent post details.
  const Post({
    required this.user,
    required this.caption,
    required this.timeAgo,
    required this.imageUrl,
    required this.likes,
    required this.comments,
    required this.shares,
  });
}
