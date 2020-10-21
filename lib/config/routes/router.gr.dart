// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:states_rebuilder_prueba/Presentation/HomePage.dart';
import 'package:states_rebuilder_prueba/Presentation/PageTwo.dart';

class Routes {
  static const String homePage = '/';
  static const String pageTwo = '/page-two';
  static const all = <String>{
    homePage,
    pageTwo,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.pageTwo, page: PageTwo),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePage: (RouteData data) {
      var args =
          data.getArgs<HomePageArguments>(orElse: () => HomePageArguments());
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(key: args.key).wrappedRoute(context),
        settings: data,
      );
    },
    PageTwo: (RouteData data) {
      var args =
          data.getArgs<PageTwoArguments>(orElse: () => PageTwoArguments());
      return MaterialPageRoute<dynamic>(
        builder: (context) => PageTwo(key: args.key),
        settings: data,
      );
    },
  };
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//HomePage arguments holder class
class HomePageArguments {
  final Key key;
  HomePageArguments({this.key});
}

//PageTwo arguments holder class
class PageTwoArguments {
  final Key key;
  PageTwoArguments({this.key});
}
