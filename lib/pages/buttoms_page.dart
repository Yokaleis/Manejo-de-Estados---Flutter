import 'package:flutter/material.dart';


class ButtomsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon( Icons.arrow_back),
          onPressed: (){}, 
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
              onPressed: (){},
              ),

              MaterialButton(
              child: Text('Cambiar edad'),
              color: Colors.purple,
              onPressed: (){},
              ),

              MaterialButton(
              child: Text('Agregar profesion'),
              color: Colors.yellow,
              onPressed: (){},
              )
          ],
        )
     ),
   );
  }
}