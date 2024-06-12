import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom FREAK',
        price: '236',
        description: 'The forward-thing design of his latest signature shoe',
        imagePath: 'lib/images/ZoomFreak.png'),
    Shoe(
        name: 'Air Jordan',
        price: '220',
        description: 'The forward-thing design of his latest signature shoe',
        imagePath: 'lib/images/AirJordan.png'),
    Shoe(
        name: 'KD Treys69',
        price: '246',
        description: 'The forward-thing design of his latest signature shoe',
        imagePath: 'lib/images/KDTREY.png'),
    Shoe(
        name: 'Kyrie 6Limit',
        price: '190',
        description: 'The forward-thing design of his latest signature shoe',
        imagePath: 'lib/images/Kyrie.png'),
        Shoe(
        name: 'Nike Limit',
        price: '290',
        description: 'The forward-thing design of his latest signature shoe',
        imagePath: 'lib/images/Nike.png')
  ];

  //list of item in user cart
  List<Shoe> userCart = [];
  //get list of shoes for sale
  List<Shoe> getShoeList() {
      return shoeShop;
  }

  //get cart
   List<Shoe> getUserCart() {
      return userCart;
  }
  //add item to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}
