import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class DashboardHandlers {
  static Handler dashboard = Handler(handlerFunc: (context, params) {
    return const SizedBox();
  });

  static Handler users = Handler(handlerFunc: (context, params) {
    return const SizedBox();
  });

  static Handler settings = Handler(handlerFunc: (context, params) {
    return const SizedBox();
  });
}
