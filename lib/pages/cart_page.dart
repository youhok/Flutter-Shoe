import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../components/cartitem.dart';
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                 const Row(
                    children: [
                      Text(
                        'My cart',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10,),

                  Expanded(child: ListView.builder(
                    itemCount: value.getUserCart().length,
                    itemBuilder: (context, index) {
                       // get shoe individualShoe
                      Shoe individualShoe = value.getUserCart()[index];
                      //retrun the cart Item
                      return Cartitem(shoe: individualShoe);
                    },
                  ))
                ],
              ),
            ));
  }
}
