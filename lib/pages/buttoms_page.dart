
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_estados_flutter/bloc/usuario/usuario_bloc.dart';

import 'package:app_estados_flutter/models/usuario_models.dart';



class ButtomsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final usuarioBloc = BlocProvider.of<UsuarioBloc>(context);


    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon( Icons.arrow_back),
          onPressed: () => Navigator.pushNamed(context, 'homepage'), 
          ),
        title: Text('Botones'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text('Nuevo usuario'),
              color: Colors.pink,
              onPressed: (){


                final newUser = new Usuario(
                  nombre: 'Jacqueline Leis',
                  edad: 50,
                  habilidades: ['Educadora', 'Chef', 'Costurera']
                );

                usuarioBloc.add( ActivarUsusario( newUser ) );
                //BlocProvider.of<UsuarioBloc>(context).add(ActivarUsusario(newUser) );
              },
              ),

              MaterialButton(
              child: Text('Cambiar edad'),
              color: Colors.purple,
              onPressed: (){
                

                usuarioBloc.add( CambiarEdad(20) );

                //BlocProvider.of<UsuarioBloc>(context).add(CambiarEdad(30));
                
              },
              ),

              MaterialButton(
              child: Text('Agregar profesion'),
              color: Colors.yellow,
              onPressed: (){
                usuarioBloc.add( AgregarHabilidad('Nueva Habilidad') );
              },
              )
          ],
        )
     ),
   );
  }
}