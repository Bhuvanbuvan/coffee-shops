class CoffeeModel {
  final String name;
  final String image;
  final String description;
  final String price;
  final String rating;

  CoffeeModel({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.rating,
  });
}

//! Latte list
List<CoffeeModel> latteListData = [
  CoffeeModel(
    name: "Latte",
    image: "assets/images/latte1.png",
    description: "Classic",
    price: "4.99",
    rating: "4.5",
  ),
  CoffeeModel(
    name: 'Latte',
    image: "assets/images/latte2.png",
    description: "chiaro",
    price: "42.99",
    rating: "4.5",
  ),
  CoffeeModel(
    name: 'Latte',
    image: "assets/images/latte3.png",
    description: "scuro",
    price: "63.99",
    rating: "4.2",
  ),
  CoffeeModel(
    name: 'Latte',
    image: "assets/images/latte4.png",
    description: "with chocolate",
    price: "64.99",
    rating: "4.5",
  ),
  CoffeeModel(
    name: 'Latte',
    image: "assets/images/latte5.png",
    description: "with vanilla",
    price: "65.99",
    rating: "4.5",
  ),
  CoffeeModel(
    name: 'Latte',
    image: "assets/images/latte6.png",
    description: "with caramel",
    price: "66.99",
    rating: "4.5",
  ),
];

//! Capuccino list
List<CoffeeModel> coffeeListData = [
  CoffeeModel(
    name: "Cappucino",
    image: "assets/images/coffee1.png",
    description: "Classic",
    price: "4.99",
    rating: "4.5",
  ),
  CoffeeModel(
    name: "Cappucino",
    image: "assets/images/coffee2.png",
    description: "chiaro",
    price: "42.99",
    rating: "4.5",
  ),
  CoffeeModel(
    name: "Cappucino",
    image: "assets/images/coffee4.png",
    description: "scuro",
    price: "63.99",
    rating: "4.2",
  ),
  CoffeeModel(
    name: "Cappucino",
    image: "assets/images/coffee3.png",
    description: "with chocolate",
    price: "64.99",
    rating: "4.5",
  ),
  CoffeeModel(
    name: "Cappucino",
    image: "assets/images/coffee5.png",
    description: "with vanilla",
    price: "65.99",
    rating: "4.5",
  ),
  CoffeeModel(
    name: "Cappucino",
    image: "assets/images/coffee6.png",
    description: "with caramel",
    price: "66.99",
    rating: "4.5",
  ),
];
