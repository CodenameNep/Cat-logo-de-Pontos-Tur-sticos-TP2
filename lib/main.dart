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
        scaffoldBackgroundColor: const Color(0xFFF2F4F7),
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
      elevation: 2,
    );
  }

  Widget _corpo() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 12),
      itemCount: pontos.length,
      itemBuilder: (context, index) {
        return _cardPonto(pontos[index]);
      },
    );
  }

  Widget _cardPonto(PontoTuristico ponto) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _imagem(ponto.imagemUrl),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _cabecalhoPonto(ponto),
                const SizedBox(height: 10),
                _descricao(ponto.descricao),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _cabecalhoPonto(PontoTuristico ponto) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            ponto.nome,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: Colors.blue.shade200),
          ),
          child: Text(
            ponto.cidade,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.blue.shade700,
            ),
          ),
        ),
      ],
    );
  }

  Widget _descricao(String texto) {
    return Text(
      texto,
      style: const TextStyle(
        fontSize: 13.5,
        color: Colors.black87,
        height: 1.35,
      ),
    );
  }

  Widget _imagem(String url) {
    return Image.network(
      url,
      height: 200,
      width: double.infinity,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return Container(
          height: 200,
          color: Colors.grey[300],
          alignment: Alignment.center,
          child: const Text(
            "Imagem não disponível",
            style: TextStyle(color: Colors.black54),
          ),
        );
      },
    );
  }
}
