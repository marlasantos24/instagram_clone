
import 'package:instagram_clone/models/stories_model.dart';

class StoriesProvider {
  List <Storie> stories = [];

  List <Storie> getStories(){

    stories = [
      new Storie(
        name: 'Iva', 
        photo: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/410.jpg'
      ),
      new Storie(
        name: 'Aurelie', 
        photo: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/907.jpg'
      ),
      new Storie(
        name: 'Clovis', 
        photo: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/229.jpg'
      ),
      new Storie(
        name: 'Juana', 
        photo: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/794.jpg'
      ),
      new Storie(
        name: 'Edmund', 
        photo: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1161.jpg'
      ),
      new Storie(
        name: 'Evans', 
        photo: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1210.jpg'
      ),
      new Storie(
        name: 'Estella', 
        photo: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1104.jpg'
      ),
      new Storie(
        name: 'Amy', 
        photo: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/275.jpg'
      ),
      new Storie(
        name: 'Alberto', 
        photo: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1128.jpg'
      ),
      new Storie(
        name: 'Rowland', 
        photo: 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1062.jpg'
      )
    ];
    return stories;
  }
}