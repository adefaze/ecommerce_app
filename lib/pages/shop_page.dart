import 'package:ecommerce_app/components/shoe_tile.dart';
import 'package:ecommerce_app/models/cart.dart';
import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          //search bar
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search',
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ],
            ),
          ),

          //message
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Text(
              'Everyone flies.... Some fly longer than others',
              style: TextStyle(color: Colors.grey[800]),
            ),
          ),

          //hot picks
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'Hot Picks 🔥',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue[700]),
                )
              ],
            ),
          ),

          const SizedBox(height: 12),
          // list of shoes for sale
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                //creating a shoe
                Shoe shoe = value.getShoeList()[index];
                // return the shoe
                return ShoeTile(
                  shoe: shoe,
                );
              },
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 25.0, left: 25),
            child: Divider(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
