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
    return ListView.builder(
      itemCount: pontos.length,
      itemBuilder: (context, index) {
        return _itemPonto(pontos[index]);
      },
    );
  }

  Widget _itemPonto(PontoTuristico ponto) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _imagem(ponto.imagemUrl),
          const SizedBox(height: 8),
          Text(
            ponto.nome,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            ponto.cidade,
            style: const TextStyle(fontSize: 14, color: Colors.blueGrey),
          ),
          const SizedBox(height: 6),
          Text(
            ponto.descricao,
            style: const TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _imagem(String url) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.network(
        url,
        height: 200,
        width: double.infinity,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            height: 200,
            color: Colors.grey[300],
            alignment: Alignment.center,
            child: const Text("Imagem não disponível"),
          );
        },
      ),
    );
  }
}
