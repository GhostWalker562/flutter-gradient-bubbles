import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './route_handlers.dart';

class Routes {
  static const String root = '/';
  static const String chatPage = '/chat';
  static late FluroRouter router;

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      print("Route does not exist.");
      return;
    });
    router.define(root, handler: rootHandler, transitionType: TransitionType.native);
    router.define(chatPage, handler: chatPageHandler, transitionType: TransitionType.native);
  }
}
