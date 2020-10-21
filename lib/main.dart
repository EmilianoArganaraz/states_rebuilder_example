import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'config/routes/router.gr.dart' as rt;
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  final rt.Router router = rt.Router();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        primaryColor: Colors.white,
        primaryColorDark: Colors.black,
        backgroundColor: Colors.white,
        fontFamily: 'Futura'
      ),
      builder: ExtendedNavigator<rt.Router>(router: router),
      initialRoute: rt.Routes.homePage,
      onGenerateRoute: router.onGenerateRoute,

    );
  }
}