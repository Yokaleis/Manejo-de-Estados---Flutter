
part of 'usuario_bloc.dart';

class UsuarioState {
  
  final bool existeUsuario;
  final Usuario? usuario;

  //CONTRUCTOR
  UsuarioState({Usuario? user})//Propiedad y argumento
    : usuario = user ?? null,
      existeUsuario = ( user != null ) ? true : false;

  UsuarioState copyWith({
    Usuario? usuario,
  }) => UsuarioState(
    user:  usuario ?? this.usuario
  );


  UsuarioState estadoInicial() => UsuarioState();

}