import '../models/user_model.dart';
import '../models/message_model.dart';

class ChatService {
  // Mock current user
  static final User currentUser = User(
    id: '1',
    name: 'Me',
    avatarUrl: 'https://api.dicebear.com/7.x/avataaars/png?seed=Felix',
  );

  // Mock other users
  static final List<User> users = [
    User(id: '2', name: 'Alice', avatarUrl: 'https://api.dicebear.com/7.x/avataaars/png?seed=Alice'),
    User(id: '3', name: 'Bob', avatarUrl: 'https://api.dicebear.com/7.x/avataaars/png?seed=Bob'),
    User(id: '4', name: 'Charlie', avatarUrl: 'https://api.dicebear.com/7.x/avataaars/png?seed=Charlie'),
    User(id: '5', name: 'Diana', avatarUrl: 'https://api.dicebear.com/7.x/avataaars/png?seed=Diana'),
  ];

  // Mock messages
  static List<Message> getMessages(String userId) {
    // Return different messages based on user ID if needed, or just generic ones
    return [
      Message(
        id: '1',
        senderId: userId, 
        text: 'Hey there!',
        timestamp: DateTime.now().subtract(const Duration(minutes: 15)),
      ),
      Message(
        id: '2',
        senderId: '1', // Me
        text: 'Hello! How are you doing?',
        timestamp: DateTime.now().subtract(const Duration(minutes: 14)),
      ),
      Message(
        id: '3',
        senderId: userId, 
        text: 'I am doing great, thanks for asking. How about you?',
        timestamp: DateTime.now().subtract(const Duration(minutes: 10)),
      ),
      Message(
        id: '4',
        senderId: '1', // Me
        text: 'Pretty good! Just working on this Flutter chat app.',
        timestamp: DateTime.now().subtract(const Duration(minutes: 5)),
      ),
    ];
  }
}
