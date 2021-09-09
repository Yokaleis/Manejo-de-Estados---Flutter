import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: InformacionUsuario(),
     floatingActionButton: FloatingActionButton(
       child: Icon (Icons.add),
       onPressed: () => Navigator.pushNamed(context, 'buttoms'),
       ),
   );
  }
}

class InformacionUsuario extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Información General',
          style:  TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(height: 5,),
          Text('Esta es la información suministrada por usted.'),

          Divider(),

          ListTile(
            title: Text('Nombre:'),
          ),
          ListTile(
            title: Text('Edad:'),
          ),

          Text('Habilidades',
          style:  TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          ),

          Divider(),

          ListTile(
            title: Text('UXUI Diesigner'),
          ),
          ListTile(
            title: Text('FrontEnd'),
          ),
        ],
      ),
    );
  }
}