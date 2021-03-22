import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../view/chat_page/chat_page.dart';
import '../view/home_page/home_page.dart';

var rootHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return HomePage();
});

var chatPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return ChatPage();
});
