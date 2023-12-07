import 'package:flutter/material.dart';
import 'package:waiter/model/product.dart';
import 'package:waiter/services/product_services.dart';

class ProductProvider extends ChangeNotifier {
  final _service = ProductService();
  bool isLoading = false;
  List<Products> _product = [];
  List<Products> get product => _product;

  Future<void> getAllTodos() async {
    isLoading = true;
    notifyListeners();

    final response = await _service.getAll();

    _product = response;
    isLoading = false;
    notifyListeners();
  }
}
