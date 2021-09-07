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
            title: Text('Nnombre:'),
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