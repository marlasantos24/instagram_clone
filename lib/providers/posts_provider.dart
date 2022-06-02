import 'package:instagram_clone/models/post_model.dart';

class PostProvider{
  List <Post> posts = [];

  List <Post> getPosts(){

    posts = [
    new Post(
      userName: 'Keenan',
      userPhoto: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/484.jpg',
      caption: 'Est eos quo itaque ut.',
      postPhoto: 'http://placeimg.com/640/480/nightlife',
      date: 'Mayo 24', 
      likes: 2405,
      topLikes: ['Marla','Gianna']
    ),
        new Post(
      userName: 'Reggie',
      userPhoto: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/708.jpg',
      caption: 'Officiis qui magni at sit tempore sed qui.',
      postPhoto: 'http://placeimg.com/640/480/technics',
      date: 'Junio 28', 
      likes: 2806,
      topLikes: ['Gianna','Marla']
    ),
        new Post(
      userName: 'Jordi',
      userPhoto: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/392.jpg',
      caption: 'Cupiditate minus quae totam.',
      postPhoto: 'http://placeimg.com/640/480/business',
      date: 'Abril 22', 
      likes: 2204,
      topLikes: ['Nahomy','Said']
    ),
        new Post(
      userName: 'Reggie',
      userPhoto: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/629.jpg',
      caption: 'Praesentium unde vitae consequatur nihil deserunt.',
      postPhoto: 'http://placeimg.com/640/480/city',
      date: 'Mayo 06', 
      likes: 605,
      topLikes: ['Said','Nahomy']
    ),
        new Post(
      userName: 'Jaeden',
      userPhoto: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/357.jpg',
      caption: 'Consectetur et iure praesentium voluptatum voluptate perspiciatis eaque.',
      postPhoto: 'http://placeimg.com/640/480/food',
      date: 'Noviembre 16', 
      likes: 1116,
      topLikes: ['Gaspar','Francica']
    ),
        new Post(
      userName: 'Eldora',
      userPhoto: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/917.jpg',
      caption: 'Eos dolore atque non quo incidunt.',
      postPhoto: 'http://placeimg.com/640/480/city',
      date: 'Diciembre 28', 
      likes: 1228,
      topLikes: ['Francisca','Gaspar']
    ),
        new Post(
      userName: 'Darien',
      userPhoto: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/289.jpg',
      caption: 'Laboriosam eum magnam quibusdam earum enim voluptas maxime rerum.',
      postPhoto: 'http://placeimg.com/640/480/sports',
      date: 'Diciembre 24', 
      likes: 1224,
      topLikes: ['Karla','Angel']
    ),
        new Post(
      userName: 'Marcus',
      userPhoto: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1128.jpg',
      caption: 'Voluptatibus laboriosam sit distinctio architecto dicta perferendis dolores doloremque pariatur.',
      postPhoto: 'http://placeimg.com/640/480/transport',
      date: 'Marzo 10', 
      likes: 310,
      topLikes: ['Angel','Karla']
    ),
        new Post(
      userName: 'Macy',
      userPhoto: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/205.jpg',
      caption: 'Consequatur qui sed hic soluta eveniet neque praesentium.',
      postPhoto: 'http://placeimg.com/640/480/technics',
      date: 'Octubre 26', 
      likes: 1026,
      topLikes: ['Marina','Alejandra']
    ),
        new Post(
      userName: 'Emelie',
      userPhoto: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/930.jpg',
      caption: 'At iure voluptatum tenetur eligendi.',
      postPhoto: 'http://placeimg.com/640/480/city',
      date: 'Marzo 28', 
      likes: 328,
      topLikes: ['Alejandra','Marina']
    ),
    ];
    return posts;
  }
  
}