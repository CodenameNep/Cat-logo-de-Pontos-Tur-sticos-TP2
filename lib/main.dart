// Leandro Andrade dos Santos

import 'package:flutter/material.dart';
import 'ponto_turistico.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Principal(),
    );
  }
}

class Principal extends StatefulWidget {
  const Principal({super.key});

  final String aluno = "Leandro Andrade dos Santos";

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  final List<PontoTuristico> pontos = obterPontosIniciais();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      body: _corpo(),
    );
  }

  AppBar _titulo() {
    return AppBar(
      title: Text("Pontos Turísticos - ${widget.aluno}"),
      centerTitle: true,
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    );
  }

  Widget _corpo() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Catálogo de Pontos Turísticos da Baixada Santista",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            "${pontos.length} pontos turísticos carregados na memória.",
            style: const TextStyle(fontSize: 15, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
