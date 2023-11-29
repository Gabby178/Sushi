import 'package:gridview/food.dart';

class Shop {
  final List<Food> _foodmenu = [
    Food(
        name: "Salmon sushi",
        price: "21",
        imagePath: 'images/sushi1.png',
        rating: '4.9'),
    Food(
        name: "Tuna sushi",
        price: "20",
        imagePath: 'images/sushi2.png',
        rating: '4.8'),
    Food(
        name: "Tilapia sushi",
        price: "21",
        imagePath: 'images/sushi3.png',
        rating: '5.0'),
  ];

  //customer cart
  List<Food> _cart = [];

  //getter methods
  List<Food> get foodmenu => _foodmenu;
  List<Food> get cart => _cart;

  void addtoCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
  }

  //remove from cart
  void removeFromCart(Food food) {
    _cart.remove(food);
  }
}
