import 'package:appteste/bloc/HomePageState.dart';
import 'dart:async';
import 'models.dart';
import 'package:http/http.dart' as http; 
import 'dart:convert' as converter;

class repositorioFake {

  final String urlBase = "https://www.googleapis.com/books/v1/volumes";

  Future<HomePageState> getLivros(String query) async{

    final url = "$urlBase?q=$query";
    var response = await http.get(url);

    if(response.statusCode == 200) {
      var body = response.body;
      var json = converter.jsonDecode(body);
      var data = Livros.fromJson(json);
      var livros = data.items;

      return HomePageStateSucesso(
        livros: livros);
    }

    else {
      return HomePageStateError(
        message: "Falha na conexão" );
    }
  }
}