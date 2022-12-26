import 'package:flutter/material.dart';
import 'package:projeto_mega_virada/app/home/home_page.dart';
import 'package:projeto_mega_virada/app/home_Mega_virada.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (_) => const HomePage(),
        '/homeMega': (_) => const HomeMegaVirada(),
      },
    );
  }
}
