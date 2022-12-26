import 'package:flutter/material.dart';
import 'dart:math';

class HomeMegaVirada extends StatefulWidget {
  const HomeMegaVirada({super.key});

  @override
  State<HomeMegaVirada> createState() => _HomeMegaViradaState();
}

class _HomeMegaViradaState extends State<HomeMegaVirada> {
  int numeros = 0;
  var listNumeros = <int>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Geração dos numeros'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GeracaoNumeradores(numeros: numeros),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {});

                  if (listNumeros.length == 20) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Colors.red,
                        duration: Duration(seconds: 3),
                        content: Text('Atingiu o máximo de números permitido'),
                      ),
                    );
                  } else {
                    numeros = Random().nextInt(60);
                    listNumeros.add(numeros);
                  }
                },
                child: const Text('Jogar'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 5),
              child: Wrap(
                spacing: 10,
                runSpacing: 5,
                children: listNumeros.map((numerosSorteados) {
                  return CircleAvatar(
                    child: Text(numerosSorteados.toString()),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GeracaoNumeradores extends StatefulWidget {
  int numeros = 0;

  GeracaoNumeradores({
    super.key,
    required this.numeros,
  });

  @override
  State<GeracaoNumeradores> createState() => _GeracaoNumeradoresState();
}

class _GeracaoNumeradoresState extends State<GeracaoNumeradores> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.black,
      child: Text(widget.numeros.toString()),
    );
  }
}
