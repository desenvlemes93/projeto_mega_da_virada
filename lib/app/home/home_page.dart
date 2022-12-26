import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final sorteioRealizado = 'O Sorteio será realizado 31/12/2022';
    return Scaffold(
        appBar: AppBar(
          title: const Text('Página Inicial'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/homeMega');
                  },
                  child: const Text('Realizar Jogo ')),
            ),
            Text(sorteioRealizado,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )),
          ],
        ));
  }
}
