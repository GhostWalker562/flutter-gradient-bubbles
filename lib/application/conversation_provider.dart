import 'package:flutter/material.dart';
import '../data/models/chat_models.dart';

class ConversationProvider extends ChangeNotifier {
  ConversationProvider(this.conversation);

  final Conversation conversation;

  void notify([VoidCallback? action]) {
    action?.call();
    notifyListeners();
  }

  /// Send a message to the conversation using the content and userID.
  void sendMessage(String content, String userID) {
    // Usually this would be an api call but we're going to just add to the local model.
    conversation.messages.add(ChatMessage(content, userID));
    notify(() => print('$userID has sent a message -> \"$content\"'));
  }
}
