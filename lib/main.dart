import 'package:flutter/material.dart';

import 'package:app_estados_flutter/bloc/usuario/usuario_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:app_estados_flutter/pages/home_page.dart';
import 'package:app_estados_flutter/pages/buttoms_page.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: ( _ ) => new UsuarioBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'homepage',
        routes: {
          'homepage' : ( _ ) => HomePage(),
          'buttoms' : ( _ ) => ButtomsPage(),
        }
      ),
    );
  }
}