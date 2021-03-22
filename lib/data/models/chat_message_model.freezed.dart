// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatMessageTearOff {
  const _$ChatMessageTearOff();

  _ChatMessage call(String content, String userID) {
    return _ChatMessage(
      content,
      userID,
    );
  }
}

/// @nodoc
const $ChatMessage = _$ChatMessageTearOff();

/// @nodoc
mixin _$ChatMessage {
  String get content => throw _privateConstructorUsedError;
  String get userID => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatMessageCopyWith<ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageCopyWith<$Res> {
  factory $ChatMessageCopyWith(
          ChatMessage value, $Res Function(ChatMessage) then) =
      _$ChatMessageCopyWithImpl<$Res>;
  $Res call({String content, String userID});
}

/// @nodoc
class _$ChatMessageCopyWithImpl<$Res> implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._value, this._then);

  final ChatMessage _value;
  // ignore: unused_field
  final $Res Function(ChatMessage) _then;

  @override
  $Res call({
    Object? content = freezed,
    Object? userID = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      userID: userID == freezed
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ChatMessageCopyWith<$Res>
    implements $ChatMessageCopyWith<$Res> {
  factory _$ChatMessageCopyWith(
          _ChatMessage value, $Res Function(_ChatMessage) then) =
      __$ChatMessageCopyWithImpl<$Res>;
  @override
  $Res call({String content, String userID});
}

/// @nodoc
class __$ChatMessageCopyWithImpl<$Res> extends _$ChatMessageCopyWithImpl<$Res>
    implements _$ChatMessageCopyWith<$Res> {
  __$ChatMessageCopyWithImpl(
      _ChatMessage _value, $Res Function(_ChatMessage) _then)
      : super(_value, (v) => _then(v as _ChatMessage));

  @override
  _ChatMessage get _value => super._value as _ChatMessage;

  @override
  $Res call({
    Object? content = freezed,
    Object? userID = freezed,
  }) {
    return _then(_ChatMessage(
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      userID == freezed
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_ChatMessage extends _ChatMessage {
  const _$_ChatMessage(this.content, this.userID) : super._();

  @override
  final String content;
  @override
  final String userID;

  @override
  String toString() {
    return 'ChatMessage(content: $content, userID: $userID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatMessage &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(userID);

  @JsonKey(ignore: true)
  @override
  _$ChatMessageCopyWith<_ChatMessage> get copyWith =>
      __$ChatMessageCopyWithImpl<_ChatMessage>(this, _$identity);
}

abstract class _ChatMessage extends ChatMessage {
  const factory _ChatMessage(String content, String userID) = _$_ChatMessage;
  const _ChatMessage._() : super._();

  @override
  String get content => throw _privateConstructorUsedError;
  @override
  String get userID => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatMessageCopyWith<_ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
