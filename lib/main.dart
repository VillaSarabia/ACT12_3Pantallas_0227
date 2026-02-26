import 'package:flutter/material.dart';
import 'home_page.dart'; // Importamos el archivo de la pantalla principal

void main() {
  runApp(const DeckTCGApp());
}

class DeckTCGApp extends StatelessWidget {
  const DeckTCGApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeckTCG Store',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}