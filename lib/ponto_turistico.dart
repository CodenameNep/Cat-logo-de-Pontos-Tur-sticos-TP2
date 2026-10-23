class PontoTuristico {
  String nome;
  String cidade;
  String imagemUrl;
  String descricao;
  bool favorito;
  bool visitado;

  PontoTuristico({
    required this.nome,
    required this.cidade,
    required this.imagemUrl,
    required this.descricao,
    this.favorito = false,
    this.visitado = false,
  });
}

List<PontoTuristico> obterPontosIniciais() {
  return [
    PontoTuristico(
      nome: 'Aquário Municipal de Santos',
      cidade: 'Santos',
      imagemUrl:
          'https://upload.wikimedia.org/wikipedia/commons/1/15/Santos_Aquarium_%284911991807%29.jpg',
      descricao:
          'Inaugurado em 1945, é o primeiro aquário público do Brasil, abrigando diversas espécies de animais marinhos e fluviais.',
      favorito: false,
      visitado: true,
    ),
    PontoTuristico(
      nome: 'Orquidário Municipal de Santos',
      cidade: 'Santos',
      imagemUrl:
          'https://upload.wikimedia.org/wikipedia/commons/6/68/Orquid%C3%A1rio_Municipal_de_Santos_%2836566252891%29.jpg',
      descricao:
          'Parque zoobotânico com rica coleção de orquídeas, trilhas arborizadas e animais da fauna nativa convivendo soltos.',
      favorito: false,
      visitado: true,
    ),
    PontoTuristico(
      nome: 'Museu do Café',
      cidade: 'Santos',
      imagemUrl:
          'https://upload.wikimedia.org/wikipedia/commons/e/e8/Museu_do_Caf%C3%A9_de_Santos_05.jpg',
      descricao:
          'Instalado no imponente palácio da antiga Bolsa Oficial de Café, preserva a história do grão e seu impacto econômico no país.',
      favorito: false,
      visitado: false,
    ),
    PontoTuristico(
      nome: 'Ponte Pênsil',
      cidade: 'São Vicente',
      imagemUrl:
          'https://upload.wikimedia.org/wikipedia/commons/f/f5/Ponte_P%C3%AAnsil_de_S%C3%A3o_Vicente_2017_001.jpg',
      descricao:
          'Patrimônio histórico inaugurado em 1914 que liga a ilha de São Vicente à área continental, sendo um marco arquitetônico da região.',
      favorito: false,
      visitado: true,
    ),
    PontoTuristico(
      nome: 'Morro do Maluf (Mirante da Campina)',
      cidade: 'Guarujá',
      imagemUrl:
          'https://upload.wikimedia.org/wikipedia/commons/5/56/Morro_do_Maluf.jpg',
      descricao:
          'Ponto panorâmico localizado entre as praias das Pitangueiras e Enseada, muito procurado para esportes radicais e contemplação.',
      favorito: false,
      visitado: true,
    ),
    PontoTuristico(
      nome: 'Fortaleza de Itaipu',
      cidade: 'Praia Grande',
      imagemUrl:
          'https://upload.wikimedia.org/wikipedia/commons/a/a9/Itaip%C3%BA_Fortress.JPG',
      descricao:
          'Conjunto de fortes construído no início do século XX encravado na Mata Atlântica com vista privilegiada da baía de Santos.',
      favorito: false,
      visitado: false,
    ),
    PontoTuristico(
      nome: 'Forte de São João',
      cidade: 'Bertioga',
      imagemUrl:
          'https://upload.wikimedia.org/wikipedia/commons/1/12/ForteSJoao-Bertioga7.jpg',
      descricao:
          'Considerada a mais antiga fortificação militar do Brasil (1547), fica junto ao canal de Bertioga no Parque dos Tupiniquins.',
      favorito: false,
      visitado: false,
    ),
    PontoTuristico(
      nome: 'Cama de Anchieta',
      cidade: 'Itanhaém',
      imagemUrl:
          'https://upload.wikimedia.org/wikipedia/commons/a/ae/ROGERIO_CASSIMIRO-SP_Itanhaem_passarela_e_cama_de_anchieta_%2840845861022%29.jpg',
      descricao:
          'Formação rochosa natural à beira-mar onde o Padre José de Anchieta descansava e se inspirava para escrever seus poemas.',
      favorito: false,
      visitado: false,
    ),
  ];
}
