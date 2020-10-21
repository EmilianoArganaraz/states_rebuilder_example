import 'package:dio/dio.dart';
import 'package:states_rebuilder_prueba/Domain/Home/Model/pelicula_model.dart';
import 'package:states_rebuilder_prueba/Infrastructure/Home/home_repo.dart';

class Home{
  int counter = 0;
  Home({this.counter});

  HomeRepoSitory _homeRepo = HomeRepoSitory() ;
  List<Pelicula> listaPelicula;

  void incrementar(){
    counter++;
  }

  void decrementar(){
    counter--;
  }

  void inicializar(){
    counter = 0;
  }


  Future<void> getEnCines() async {
    final Response<dynamic> response = await _homeRepo.fetchNowPlaying();

    if (response.data['results'] != null) {
      listaPelicula = response.data['results']
          .map<Pelicula>((dynamic i) => Pelicula.fromJsonMap(i))
          .toList();
    }

  }

}