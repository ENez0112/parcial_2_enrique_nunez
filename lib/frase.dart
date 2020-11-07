class Frase {
  final int id;
  final String frase;
  final String livro;
  final String autor;

  Frase({this.id, this.frase, this.livro, this.autor});

  factory Frase.fromJson(Map<dynamic, dynamic> json) {
    return Frase(
      id: json['id'] as int,
      frase: json['frase'] as String,
      livro: json['livro'] as String,
      autor: json['autor'] as String,
    );
  }
}
