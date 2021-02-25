import 'package:flutter/material.dart';

class Item{
  int id;
  String title;
  String imageUrl;
  double price;
  int qty;

  Item(
      {
        @required this.id,
        @required this.title,
        @required this.imageUrl,
        @required this.price,
        @required this.qty});
}

List<Item> itemList = [
  Item(
      id: 1,
      title:'Toyota Corolla Cross 1.8 Hybird ',
      imageUrl:'https://d2pa5gi5n2e1an.cloudfront.net/th/images/car_models/Toyota_Corolla_Cross/1/exterior/exterior_2L_1.jpg',
      price: 1199000,
      qty: 1
  ),
  Item(
      id: 2,
      title:'Toyota Vios 1.5 High MY19 2019',
      imageUrl:'https://www.checkraka.com/uploaded/logo/31/31f604a1bd3dadaf715eb14ecf6e7217.png',
      price: 789000,
      qty: 1
  ),
  Item(
      id: 3,
      title:'Audi TT 2021',
      imageUrl:'https://d2pa5gi5n2e1an.cloudfront.net/th/images/car_models/Audi_TT/3/main/L_1.jpg',
      price: 4699000,
      qty: 1
  ),
  Item(
      id: 4,
      title:'BMW X1',
      imageUrl:'https://d2pa5gi5n2e1an.cloudfront.net/th/images/car_models/BMW_X1_1/2/exterior/exterior_2L_1.jpg',
      price: 2559000,
      qty: 1
  ),
  Item(
      id: 5,
      title:'BMW X5',
      imageUrl:'https://d2pa5gi5n2e1an.cloudfront.net/th/images/car_models/BMW_X5/3/exterior/exterior_2L_1.jpg',
      price: 4959000,
      qty: 1
  ),
  Item(
      id: 6,
      title:'Mini cooper',
      imageUrl:'https://d2pa5gi5n2e1an.cloudfront.net/webp/th/images/car_models/Mini_Cooper/3/exterior/exterior_2L_1.jpg',
      price: 2890000,
      qty: 1
  ),
  Item(
      id: 7,
      title:'Mercedes-Benz GLB ',
      imageUrl:'https://d2pa5gi5n2e1an.cloudfront.net/th/images/car_models/MercedesBenz_GLB/1/main/MercedesBenz_GLB_L_1.jpg',
      price: 2860000,
      qty: 1
  ),
  Item(
      id: 8,
      title:'Ford Ranger Double Cab 2.0L Bi-Turbo Raptor ',
      imageUrl:'https://www.checkraka.com/uploaded/logo/37/3773b2c8dffeec601b9723a289c8cb9e.jpg',
      price: 1699000,
      qty: 1
  ),
  Item(
      id: 9,
      title:'Ford Mustang 5.0L V8 GT Coupe BMW',
      imageUrl:'https://www.checkraka.com/uploaded/logo/64/64aee21f3617145770ab310dc53219fa.jpg',
      price: 4799000,
      qty: 1
  ),
  Item(
      id: 10,
      title:'Tesla Model 3 ',
      imageUrl:'https://s.isanook.com/au/0/rp/r/w728/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL2F1LzAvdWQvMTQvNzA2ODEvMjAzLmpwZw==.jpg',
      price: 2990000,
      qty: 1
  ),

];