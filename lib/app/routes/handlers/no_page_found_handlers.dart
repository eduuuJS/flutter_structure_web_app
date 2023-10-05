import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class NoPageFoundHandlers {
  static Handler noPageFound = Handler(handlerFunc: (context, params) {
    return const SizedBox();
  });
}
