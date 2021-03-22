import 'package:freezed_annotation/freezed_annotation.dart';

import 'chat_message_model.dart';
import 'user_model.dart';

part 'conversation_model.freezed.dart';

@freezed
class Conversation with _$Conversation {
  const factory Conversation(List<User> users, List<ChatMessage> messages) = _Conversation;
}
