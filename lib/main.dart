import 'package:flutter/material.dart';
import 'widgets/inicio.dart';
import 'widgets/pantalla2.dart';
import 'widgets/pantalla3.dart';

void main() {
  runApp(const MiAppViajes());
}

class MiAppViajes extends StatelessWidget {
  const MiAppViajes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Exa1 0689',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Inicio(),
        '/pantalla2': (context) => const Pantalla2(),
        '/pantalla3': (context) => const Pantalla3(),
      },
    );
  }
}
