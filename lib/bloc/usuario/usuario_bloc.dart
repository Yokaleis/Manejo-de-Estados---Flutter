import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import 'package:app_estados_flutter/models/usuario_models.dart';


part 'usuario_state.dart';
part 'usuario_events.dart';

class UsuarioBloc extends Bloc<UsuarioEvent, UsuarioState> {


  UsuarioBloc() : super( UsuarioState() );


  //Recibe el evento y cambia el estado
  @override
  Stream<UsuarioState> mapEventToState(UsuarioEvent event) async* {
  
  //Los enventos caen aqui.
    
    //print('Hola Greta 😻');

    if( event is ActivarUsusario ){
      yield state.copyWith (usuario: event.usuario);  
    }else if( event is CambiarEdad ){
      yield state.copyWith(
        usuario: state.usuario!.copyWith( edad: event.edad )
      ); 
    }else if( event is AgregarHabilidad ){
      yield state.copyWith(
        usuario: state.usuario!.copyWith(
          habilidades: [
            ...state.usuario!.habilidades, event.habilidad
          ]
        )
      );
    }else if( event is BorrarUsuario ){
      //yield UsuarioState();
      yield state.estadoInicial();
    }


  }



}