// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'conversation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConversationTearOff {
  const _$ConversationTearOff();

  _Conversation call(List<User> users, List<ChatMessage> messages) {
    return _Conversation(
      users,
      messages,
    );
  }
}

/// @nodoc
const $Conversation = _$ConversationTearOff();

/// @nodoc
mixin _$Conversation {
  List<User> get users => throw _privateConstructorUsedError;
  List<ChatMessage> get messages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConversationCopyWith<Conversation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationCopyWith<$Res> {
  factory $ConversationCopyWith(
          Conversation value, $Res Function(Conversation) then) =
      _$ConversationCopyWithImpl<$Res>;
  $Res call({List<User> users, List<ChatMessage> messages});
}

/// @nodoc
class _$ConversationCopyWithImpl<$Res> implements $ConversationCopyWith<$Res> {
  _$ConversationCopyWithImpl(this._value, this._then);

  final Conversation _value;
  // ignore: unused_field
  final $Res Function(Conversation) _then;

  @override
  $Res call({
    Object? users = freezed,
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
    ));
  }
}

/// @nodoc
abstract class _$ConversationCopyWith<$Res>
    implements $ConversationCopyWith<$Res> {
  factory _$ConversationCopyWith(
          _Conversation value, $Res Function(_Conversation) then) =
      __$ConversationCopyWithImpl<$Res>;
  @override
  $Res call({List<User> users, List<ChatMessage> messages});
}

/// @nodoc
class __$ConversationCopyWithImpl<$Res> extends _$ConversationCopyWithImpl<$Res>
    implements _$ConversationCopyWith<$Res> {
  __$ConversationCopyWithImpl(
      _Conversation _value, $Res Function(_Conversation) _then)
      : super(_value, (v) => _then(v as _Conversation));

  @override
  _Conversation get _value => super._value as _Conversation;

  @override
  $Res call({
    Object? users = freezed,
    Object? messages = freezed,
  }) {
    return _then(_Conversation(
      users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
    ));
  }
}

/// @nodoc
class _$_Conversation implements _Conversation {
  const _$_Conversation(this.users, this.messages);

  @override
  final List<User> users;
  @override
  final List<ChatMessage> messages;

  @override
  String toString() {
    return 'Conversation(users: $users, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Conversation &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(messages);

  @JsonKey(ignore: true)
  @override
  _$ConversationCopyWith<_Conversation> get copyWith =>
      __$ConversationCopyWithImpl<_Conversation>(this, _$identity);
}

abstract class _Conversation implements Conversation {
  const factory _Conversation(List<User> users, List<ChatMessage> messages) =
      _$_Conversation;

  @override
  List<User> get users => throw _privateConstructorUsedError;
  @override
  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConversationCopyWith<_Conversation> get copyWith =>
      throw _privateConstructorUsedError;
}
