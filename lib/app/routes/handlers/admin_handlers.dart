import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class AdminHandlers {
  static Handler login = Handler(handlerFunc: (context, params) {
    return const Text("Logeando...");
  });

  static Handler register = Handler(handlerFunc: (context, params) {
    return const Text("Registrando...");
  });
}
