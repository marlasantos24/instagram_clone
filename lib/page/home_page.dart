import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_clone/models/stories_model.dart';
import 'package:instagram_clone/providers/stories_provider.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  StoriesProvider storiesProvider = new StoriesProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _etiquetas(),
            _historias(), 
            Divider(
              color: Colors.grey, 
              height: 0,
              thickness: 0.5,
              ),
              _posts(),
          ],
        ),
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
        children: storiesProvider.getStories().map((storie){
          return _crearHistoria(storie);
        }).toList(),
      ),
    );
  }

  Widget _crearHistoria(Storie storie){
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
               image: NetworkImage(
                 storie.photo
               ),
               height: 65,
               width: 65,
               fit: BoxFit.cover),
            ),
          ),
        ),
         SizedBox(height: 6),
         Text(
          storie.name,
          style: TextStyle(fontSize: 13)
         )
      ],
    );
  }

  Widget _posts(){
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 50,
        itemBuilder: (context, i){
          return _crearPost();
        }),
    );
  }

  
  Widget _crearPost(){
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget> [
                  Container(
          child: Container(
            padding: EdgeInsets.only(top: 12, 
            left: 18,
            bottom: 12,
            right: 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image(
               image: NetworkImage(
                 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/120.jpg'
               ),
               height: 45,
               width: 45,
               fit: BoxFit.cover),
            ),
          ),
        ),
          Text('Marla',
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 16)
          ),
          Expanded(child: SizedBox()),
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.more_horiz),
            iconSize: 30,
            ),
              ],
            ),
          ),
          FadeInImage(
            placeholder: AssetImage('assets/img/loading.gif'), 
            image: NetworkImage('http://placeimg.com/640/480/cats')),
          Container(
            padding: EdgeInsets.only(top: 5, left: 7, right: 7, bottom: 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: <Widget>[
                IconButton(
                onPressed: (){}, 
                icon: Image(
                  image: AssetImage('assets/img/heart.png'),
                  width: 30),
                ),
                IconButton(
                onPressed: (){}, 
                icon: Image(
                  image: AssetImage('assets/img/comment.png'),
                  width: 30),
                ),
                IconButton(
                onPressed: (){}, 
                icon: Image(
                  image: AssetImage('assets/img/send.png'),
                  width: 30),
                ),
                  ],
                ),
                 IconButton(
                onPressed: (){}, 
                icon: Image(
                  image: AssetImage('assets/img/save_o.png'),
                  width: 30),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 17, right: 17, bottom: 10),
            child: Row(
              children: [
                Text('Likes By Marla, Gigi and 124 others')
              ],
            ),
          ),
          Container(

            width: double.infinity,
            padding: EdgeInsets.only(
              left: 17,
              right: 17,
              bottom: 10),
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Marla ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        )
                      ),
                      TextSpan(
                        text: 'Eos eos quis quidem deleniti eum tempora fugit et. Incidunt id sint magni adipisci. Sed quisquam nobis mollitia et velit commodi nesciunt. Sit blanditiis cumque sit sunt provident commodi deserunt placeat. Voluptatem blanditiis et deserunt fugiat perferendis et quo est maxime. Autem aut officiis est ullam explicabo.',
                        style: TextStyle(
                          color: Colors.black
                        )
                      )
                    ]
                  )
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.symmetric(
                      vertical:10),
                    child: Text(
                      'Mayo 24',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18
                        ),
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }

}

