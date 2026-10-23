import 'package:flutter_test/flutter_test.dart';
import 'package:catalogo_pontos_turisticos/ponto_turistico.dart';

void main() {
  group('Testes do Modelo PontoTuristico (Commit 1)', () {
    test('A lista deve conter pelo menos 7 pontos turísticos reais', () {
      final pontos = obterPontosIniciais();
      expect(pontos.length, greaterThanOrEqualTo(7));
      expect(pontos.length, equals(8));
    });

    test('Todos os pontos turísticos devem ter todos os campos preenchidos', () {
      final pontos = obterPontosIniciais();
      for (final ponto in pontos) {
        expect(ponto.nome.isNotEmpty, isTrue);
        expect(ponto.cidade.isNotEmpty, isTrue);
        expect(ponto.imagemUrl.startsWith('http'), isTrue);
        expect(ponto.descricao.isNotEmpty, isTrue);
      }
    });

    test('Validação dos status visitados definidos por Leandro', () {
      final pontos = obterPontosIniciais();
      final aquario = pontos.firstWhere((p) => p.nome.contains('Aquário'));
      final museuCafe = pontos.firstWhere((p) => p.nome.contains('Café'));
      final pontePensil = pontos.firstWhere((p) => p.nome.contains('Pênsil'));
      final morroMaluf = pontos.firstWhere((p) => p.nome.contains('Maluf'));

      expect(aquario.visitado, isTrue, reason: 'Aquário já foi visitado');
      expect(museuCafe.visitado, isFalse, reason: 'Museu do Café ainda não foi visitado');
      expect(pontePensil.visitado, isTrue, reason: 'Ponte Pênsil já foi visitada');
      expect(morroMaluf.visitado, isTrue, reason: 'Morro do Maluf já foi visitado');
    });
  });
}
