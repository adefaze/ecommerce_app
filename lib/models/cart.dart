import 'shoe.dart';

class Cart {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Nike Air Max',
        price: '500',
        imagePath: 'lib/images/nike_air_max.png',
        description:
            'Made for movers and shakers, the Tatum 3 offers a contouring fit in a lightweight design, helping you dominate the game in the smoothest of fashion'),
    Shoe(
        name: 'Nike Air Zoom',
        price: '300',
        imagePath: 'lib/images/nike_air_zoom.png',
        description:
            'Sound familiar? A strong but flexible upper gives you the containment and stretch that quick cuts and dynamic movements demand'),
    Shoe(
        name: 'Nike Air Max',
        price: '500',
        imagePath: 'lib/images/nike_free.png',
        description:
            'Ahead of its time in \'99, the futuristic Air Max SNDR is back and classier than ever. '),
    Shoe(
        name: 'Nike Lebron',
        price: '600',
        imagePath: 'lib/images/nike_lebron.png',
        description:
            'Helping you shift in and out of action just like the champ himself. No pressure.'),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}
