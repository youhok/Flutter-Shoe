import 'package:ecommerce/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/shoe.dart';

// ignore: must_be_immutable
class Cartitem extends StatefulWidget {
  Shoe shoe;
  Cartitem({super.key, required this.shoe});

  @override
  State<Cartitem> createState() => _CartitemState();
}

class _CartitemState extends State<Cartitem> {
  

  void removeItemFormCart(){
    Provider.of<Cart>(context , listen: false).removeItemFromCart(widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[100],borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text('${widget.shoe.price}\$'),
        trailing: IconButton(icon: const Icon(Icons.delete), onPressed: removeItemFormCart,),
      ),
    );
  }
}
