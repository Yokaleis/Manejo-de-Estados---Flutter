//Eventos que disparan acciones y cambian el STATE

part of 'usuario_bloc.dart';


@immutable
abstract class UsuarioEvent{}

class ActivarUsusario extends UsuarioEvent {
  final Usuario usuario;
  ActivarUsusario(this.usuario);

  get edad => null;

  get habilidad => null;
}

class CambiarEdad extends UsuarioEvent{
  final int edad;
  CambiarEdad(this.edad);
}

class AgregarHabilidad extends UsuarioEvent {
  final String habilidad;

  AgregarHabilidad(this.habilidad);
}

class BorrarUsuario extends UsuarioEvent {}