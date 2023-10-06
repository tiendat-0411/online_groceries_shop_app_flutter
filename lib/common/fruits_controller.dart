import 'package:get/get.dart';
import 'package:online_groceries/model/Choice.dart';


class CardController extends GetxController {
  var _products = {}.obs;

  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    Get.snackbar(
      "Product Added",
      "You have add the ${product.name} to the card ",
      snackPosition: SnackPosition.TOP,
      duration: const Duration(seconds: 1),
    );
  }

  void removeProduct(Product product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
  }
void removeallProduct(Product product){
    _products.removeWhere((key, value) => key == product);
    _products[product] -= 1;   
  }
  get products => _products;

}

