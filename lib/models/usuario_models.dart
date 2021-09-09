class Usuario {
  final String nombre;
  final int edad;
  final List<String> habilidades;

  Usuario({
    required this.nombre, 
    required this.edad, 
    required this.habilidades
  });


//El COPYWITH regresa una nueva instancia de Usuario
  Usuario copyWith({
     String? nombre,
     int? edad,
     List<String>? habilidades,
  }) => new Usuario(
    nombre: nombre ?? this.nombre, 
    edad: edad ?? this.edad, 
    habilidades: habilidades ?? this.habilidades 
    );
}