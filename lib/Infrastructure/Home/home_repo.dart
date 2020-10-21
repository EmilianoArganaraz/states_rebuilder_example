import 'package:dio/dio.dart';
import 'package:states_rebuilder_prueba/Infrastructure/core/api_getEnCines.dart';

class HomeRepoSitory{

  static String _apiKey   = '02b11456a2496381166a1d40c6850dba';
  
  final ApiGetEnCines _api = ApiGetEnCines();


  Future<Response<dynamic>> fetchNowPlaying() async =>
    _api.client.get('?api_key=$_apiKey&language=en-US&page=1');
}