import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:parcial_2_enrique_nunez/frase.dart';

class Api {
  final String url = "https://allugofrases.herokuapp.com/frases/random";
  // get
  Future<Frase> getFrase() async {
    final response = await http.get(url);
    // print(Frase.fromJson(json.decode(response.body)));
    //print(response.body);
    if (response.statusCode == 200) {
      Frase frase = Frase.fromJson(json.decode(response.body));
      print(frase.frase);
      return frase;
    } else
      throw Exception('Failed to load a phrase');
  }
}
