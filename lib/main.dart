import 'package:horarios_ifro/pages/HomePage.dart';
import 'package:horarios_ifro/routes.dart';
import 'package:flutter/material.dart';

import 'pages/FormularioDisciplina.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ADS - IFRO',
        theme: ThemeData.dark(),
        initialRoute: '/home',
        routes: routes());
  }
}
