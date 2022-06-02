import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_clone/models/post_model.dart';
import 'package:instagram_clone/models/stories_model.dart';
import 'package:instagram_clone/providers/posts_provider.dart';
import 'package:instagram_clone/providers/stories_provider.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  StoriesProvider storiesProvider = new StoriesProvider();
  PostProvider postProvider = new PostProvider();

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
        itemCount: postProvider.getPosts().length,
        itemBuilder: (context, i){
         return _crearPost(postProvider.getPosts()[i]);
        }),
    );
  }

  
  Widget _crearPost(Post post){

    List <Widget> userLikes = [];

    userLikes.add(Text('Me gusta por '));

    int count = 1;
    int countUserLikes = post.topLikes.length;


    post.topLikes.forEach((name){
      Widget _temp = Text(
        count != countUserLikes ? name + ', ':name,
        style: TextStyle(fontWeight: FontWeight.bold),
      );

      userLikes.add(_temp);
      count == countUserLikes ? userLikes.add(Text(' y ')):null;
      count == countUserLikes ?
      userLikes.add(Text('${post.likes} otros',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,
      ))):null;

      count++;
    });



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
               image: NetworkImage(post.userPhoto),
               height: 45,
               width: 45,
               fit: BoxFit.cover),
            ),
          ),
        ),
          Text(post.userName,
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
            image: NetworkImage(post.postPhoto)),
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
              children: userLikes,
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
                        text: "${post.userName} ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        )
                      ),
                      TextSpan(
                        text: post.caption,
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
                      post.date,
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

