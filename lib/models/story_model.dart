// Import the 'user_model.dart' file to access the User class.
import 'user_model.dart';

// Define a Story class representing a story with user information.
class Story {
  // Declare three fields to store information about the story.
  final User user;       
  final String imageUrl; 
  final bool isViewed;     

  const Story({
    required this.user,       
    required this.imageUrl,  
    this.isViewed = false,   
  });
}
