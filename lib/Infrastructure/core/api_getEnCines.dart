import 'package:dio/dio.dart';

class ApiGetEnCines{

  // static String _apiKey   = '02b11456a2496381166a1d40c6850dba';
  // static String _language = 'es-ES';
  static String _url = 'https://api.themoviedb.org/3/movie/now_playing';

  static final  BaseOptions _options =  BaseOptions(baseUrl: _url);

  final Dio client = Dio(_options);
  
}