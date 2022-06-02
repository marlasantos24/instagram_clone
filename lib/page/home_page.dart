import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: _appBar(),
      body: _etiquetas(),
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
}

