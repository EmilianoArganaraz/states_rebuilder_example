import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:states_rebuilder_prueba/Application/Home/home.dart';
import 'package:states_rebuilder_prueba/config/routes/router.gr.dart';

class HomePage extends StatelessWidget implements AutoRouteWrapper  {

  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final ReactiveModel<Home> _home = RM.get<Home>();

    
    return Scaffold(
      appBar: AppBar(title: Text("Home Page"),),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              StateBuilder<Home>(
                initState: (BuildContext context, _) => _home.setState((s) => s.counter = 0),
                observe: () => RM.get<Home>(),
                builder: (context, _home){
                  return Text("Contador: ${_home.state.counter.toString()}");
                }
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                      heroTag: "1",
                    child: Icon(Icons.remove),
                    onPressed: () async {
                      _home.setState((s) => s.decrementar());
                    }
                  ),
                  SizedBox(width: 20),
                  FloatingActionButton(
                    heroTag: "2",
                    child: Icon(Icons.add),
                    onPressed: () async {
                      _home.setState((s) => s.incrementar());
                    }
                  ),
                  SizedBox(width: 20),
                  FloatingActionButton(
                    heroTag: "3",
                    child: Text("0"),
                    onPressed: () async {
                      _home.setState((s) => s.inicializar());
                    }
                  )
                ],
              ),
              SizedBox(height: 20),
              FloatingActionButton(
                heroTag: "4",
                child: Icon(Icons.arrow_right_alt),
                onPressed: () => ExtendedNavigator.root.pushNamed(Routes.pageTwo)
                )
            ],
          ),
        ),
      ),
    );
  }


  @override
  Widget wrappedRoute(BuildContext context){
    return Injector(
      inject: <Injectable>[
        Inject(()=>Home())
      ],
      builder: (_) => this,
    );
  }


}