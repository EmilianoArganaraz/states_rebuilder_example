import 'package:dio/dio.dart';
import 'package:states_rebuilder_prueba/Domain/Home/Model/pelicula_model.dart';

class Home{
  int counter = 0;
  Home({this.counter});

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

}