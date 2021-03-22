import 'package:uuid/uuid.dart';

import 'models/chat_models.dart';

final String mockUID = Uuid().v1();

Conversation get mockConversation {
  final List<User> users = <User>[];
  final List<ChatMessage> messages = <ChatMessage>[];

  final String uid = Uuid().v1();

  // Elon
  users.add(User(
      'Elon Musk',
      'https://content.fortune.com/wp-content/uploads/2021/02/GettyImages-1229901940.jpg',
      uid));
  messages.add(ChatMessage('Hey Moon!', uid));
  messages.add(ChatMessage('What\'s up :)', uid));

  // Moon
  users.add(User(
      'Moon',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSFOI_SLj8rgORW_wcgghvT6iztfsNpevhGw&usqp=CAU',
      mockUID));
  messages.add(ChatMessage('Nothing much, I\'ve just been ok', mockUID));

  // More conversation
  messages.add(ChatMessage('Want to hop onto a spaceship to the moon?', uid));
  messages.add(ChatMessage('I would if it wasn\'t so dangerous :(', mockUID));

  return Conversation(users, messages);
}

