import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class DashboardHandlers {
  static Handler dashboard = Handler(handlerFunc: (context, params) {
    return const Text("En el dash...");
  });

  static Handler users = Handler(handlerFunc: (context, params) {
    return const Text("Dash usuarios");
  });

  static Handler settings = Handler(handlerFunc: (context, params) {
    return const Text("Settings");
  });
}
