import 'package:instagram_clone/models/post_model.dart';

class PostProvider {
  List <Post> posts = [];

  List <Post> getPosts() {
    posts = [
      new Post(
        userName: "Fae",
        userPhoto:
            "https://s3.amazonaws.com/uifaces/faces/twitter/frankiefreesbie/128.jpg",
        caption:
            "Maiores cupiditate aliquid. Neque sint est. Quasi quam architecto officiis quas sequi reiciendis.",
        postPhoto: "http://lorempixel.com/640/480/people",
        date: "Mayo 24",
        likes: 224,
        topLikes: ["Marla", "Gigi"],
      ),
      new Post(
        userName: "Bernard",
        userPhoto:
            "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/936.jpg",
        caption:
            "Omnis quisquam voluptatibus libero cum laborum voluptates hic perferendis et.",
        postPhoto: "http://placeimg.com/640/480/nightlife",
        date: "Junio 28",
        likes: 228,
        topLikes: ["Marla", "Gigi"],
      ),
      new Post(
        userName: "Rafaela",
        userPhoto:
            "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/352.jpg",
        caption:
            "Sed ratione fugit commodi dolor exercitationem ullam ut et vel.",
        postPhoto: "http://placeimg.com/640/480/people",
        date: "Mayo 06",
        likes: 206,
        topLikes: ["Angel", "Logan"],
      ),
      new Post(
        userName: "Esta",
        userPhoto:
            "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/905.jpg",
        caption:
            "Sunt ullam qui in inventore vel ad et.",
        postPhoto: "http://placeimg.com/640/480/cats",
        date: "Abril 22",
        likes: 222,
        topLikes: ["Angel", "Logan"],
      ),
      new Post(
        userName: "Ashton",
        userPhoto:
            "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1163.jpg",
        caption:
            "Cumque deleniti sunt tempore est nostrum optio corrupti temporibus.",
        postPhoto: "http://placeimg.com/640/480/food",
        date: "Diciembre 24",
        likes: 124,
        topLikes: ["Nahomy", "Karla"],
      ),
      new Post(
        userName: "Kayleigh",
        userPhoto:
            "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/257.jpg",
        caption:
            "Qui sit sed iusto enim tempore officia et magnam.",
        postPhoto: "http://placeimg.com/640/480/business",
        date: "Diciembre 28",
        likes: 128,
        topLikes: ["Nahomy", "Karla"],
      ),
      new Post(
        userName: "Keith",
        userPhoto:
            "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/189.jpg",
        caption:
            "Voluptatem sunt corrupti illum et.",
        postPhoto: "http://placeimg.com/640/480/people",
        date: "Noviembre 16",
        likes: 225,
        topLikes: ["Gapar", "Francisca"],
      ),
      new Post(
        userName: "Sarina",
        userPhoto:
            "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/984.jpg",
        caption:
            "Dignissimos ut ratione illo eos ea laborum in.",
        postPhoto: "http://placeimg.com/640/480/animals",
        date: "Marzo 10",
        likes: 210,
        topLikes: ["Gaspar", "Francisca"],
      ),
      new Post(
        userName: "Keyshawn",
        userPhoto:
            "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1210.jpg",
        caption:
            "Omnis veritatis doloremque in dolorem libero labore perferendis non cum.",
        postPhoto: "http://placeimg.com/640/480/city",
        date: "Marzo 28",
        likes: 128,
        topLikes: ["Austyn", "Brant"],
      )
    ];

    return posts;
  }
}