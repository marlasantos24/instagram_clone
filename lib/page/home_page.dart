import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: _appBar(),
      body: Column(
        children: <Widget>[
          _etiquetas(),
          _historias()
        ],
      )
    );
  }
 PreferredSizeWidget _appBar() {
   return AppBar(
     bottom: PreferredSize(
       preferredSize: Size.fromHeight(0.5),
       child: Container(
         color: Colors.black38,
         height: 0.75,
       ),
     ),
     backgroundColor: Color(0xFFF9F9F9),
     elevation: 0,
     centerTitle: true,
     title: Container(
       margin: EdgeInsets.only(top: 10),
       child: SizedBox(
         height: 40,
         child: Image.asset('assets/img/logo-instagram.png')),
     ), 
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Feather.camera),
          color: Colors.black,
          iconSize: 30,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){}, 
            icon: Icon(
            Feather.tv,
            color: Colors.black,
            size: 28),
            ),
            IconButton(
            onPressed: (){}, 
            icon: Icon(
            FontAwesome.send_o,
            color: Colors.black,
            size: 28),
            ),
        ],
   );
  }
Widget _etiquetas(){
  return Container(
    margin: EdgeInsets.only(top: 5, left: 15, right: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget> [
        Text('Stories',
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
        ),
        Row(
          children: [
            Icon(Icons.arrow_right),
            Text('Watch All',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
            ),
          ],
        ),
      ],
    ),
  );
}

  Widget _historias(){
    return Container(
      height: 105,
      width: double.infinity,
      margin: EdgeInsets.only(top: 10, left: 5),
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: false,
        children: <Widget>[
          _crearHistoria(Colors.blue),
          _crearHistoria(Colors.pink),
          _crearHistoria(Colors.blue),
          _crearHistoria(Colors.pink),
          _crearHistoria(Colors.blue),
        ],
      ),
    );
  }

  Widget _crearHistoria(Color color){
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              width: 3,
              color: Color(0xFF8E44AD)
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image(
               image: NetworkImage('https://us.123rf.com/450wm/domenicogelermo/domenicogelermo1909/domenicogelermo190900265/129438391-retrato-frontal-de-la-mujer-con-rostro-de-belleza-aislado.jpg?ver=6'),
               height: 65,
               width: 65,
               fit: BoxFit.cover),
            ),
          ),
        ),
         SizedBox(height: 6),
         Text('Marla',
         style: TextStyle(fontSize: 13)
         )
      ],
    );
  }
}

