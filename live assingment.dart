
/*Consider a Dart program managing a list of fruits. Each fruit has attributes like name, color, and price.

Create a Dart list named fruits with at least three fruits, represented as maps.
Write a function displayFruitDetails that takes the fruits list as a parameter and prints out the details of each fruit.
Implement a function applyPriceDiscount() that takes the fruits list and a discount percentage as parameters. This function should update the price of each fruit by applying the discount.

Sample I/O:

Original Fruit Details before Discount:
Name: Apple, Color: Red, Price: $2.5
Name: Banana, Color: Yellow, Price: $1.0
Name: Grapes, Color: Purple, Price: $3.0

Fruit Details After Applying 10% Discount:
Name: Apple, Color: Red, Price: $2.25
Name: Banana, Color: Yellow, Price: $0.9
Name: Grapes, Color: Purple, Price: $2.7
*/


void main() {
  // Define a list of fruits
  List<Map<String, dynamic>> fruits = [
    {"name": "Apple", "color": "Red", "price": 2.5},
    {"name": "Banana", "color": "Yellow", "price": 1.0},
    {"name": "Grapes", "color": "Purple", "price": 3.0}
  ];

  // Display original fruit details
  print("Original Fruit Details before Discount:");
  displayFruitDetails(fruits);

  // Apply discount of 10%
  applyPriceDiscount(fruits, 10);

  // Display fruit details after discount
  print("\nFruit Details After Applying 10% Discount:");
  displayFruitDetails(fruits);
}

void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print(
        "Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price'].toStringAsFixed(2)}");
  }
}

void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double currentPrice = fruit['price'];
    double discountedPrice = currentPrice - (currentPrice * discountPercentage / 100);
    fruit['price'] = discountedPrice;
  }
}