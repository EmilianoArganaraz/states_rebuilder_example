import 'package:auto_route/auto_route_annotations.dart';
// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';
// import 'package:states_rebuilder_prueba/Application/Home/home.dart';
import 'package:states_rebuilder_prueba/Presentation/HomePage.dart';
import 'package:states_rebuilder_prueba/Presentation/PageTwo.dart';


@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: HomePage, initial: true),
    MaterialRoute(page: PageTwo)
  ]
)
class $Router{
  // // @initial
  // HomePage homePageRoute;
  // PageTwo pageTwoRoute;
}