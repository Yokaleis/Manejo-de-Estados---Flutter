
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_estados_flutter/bloc/usuario/usuario_bloc.dart';

import 'package:app_estados_flutter/models/usuario_models.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(onPressed: (){
            BlocProvider.of<UsuarioBloc>(context).add( BorrarUsuario() );
          }, 
          icon: Icon(Icons.delete),
          ),
        ],
      ),
      body: BlocBuilder<UsuarioBloc, UsuarioState>(
        builder: (_, state){
         if( state.existeUsuario ){
           return InformacionUsuario( usuario: state.usuario! );
         }else {
           return Center(
             child: Text('No hay usuario por ahora'),
           );
         }
        },
      ),
     floatingActionButton: FloatingActionButton(
       child: Icon (Icons.add),
       onPressed: () => Navigator.pushNamed(context, 'buttoms'),
       ),
   );
  }
}

class InformacionUsuario extends StatelessWidget {
 
  final Usuario usuario;

  const InformacionUsuario({required this.usuario});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Text('Informaci[on General',
          style:  TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          ),

          Divider(),

          ListTile(
            title: Text('Nnombre: ${ usuario.nombre }'),
          ),
          ListTile(
            title: Text('Edad: ${ usuario.edad }'),
          ),

          Text('Habilidades',
          style:  TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          ),

          Divider(),

          ...usuario.habilidades.map(
            (habilidades) => ListTile( title: Text(habilidades)) ).toList()
        ],
      ),
    );
  }

}