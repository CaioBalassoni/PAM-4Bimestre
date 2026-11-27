import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/filme.dart';

class OmdbService{
  
  // final String apiKey = 'SUA CHAVE';
  final String apiKey = "684c7c2";

  Future<List<Filme>> buscarFilmes(String nomeFilme) async{
    
  }
}