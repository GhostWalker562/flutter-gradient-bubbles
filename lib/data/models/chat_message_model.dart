import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_model.dart';

part 'chat_message_model.freezed.dart';

@freezed
class ChatMessage with _$ChatMessage {
  const ChatMessage._();
  const factory ChatMessage(String content, String userID) = _ChatMessage;

  bool isSenderUID(String uid) => uid == userID;
  bool isSender(User user) => user.userID == userID;
}
