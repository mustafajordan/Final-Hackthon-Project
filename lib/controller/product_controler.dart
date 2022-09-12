import 'dart:convert';

import 'package:ailearns/utils/base_url.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../model/product_model.dart';
class ProductController extends GetxController{
  void onInit(){
    getProduct();
    update();
    super.onInit();
  }
    List<ProductModel> products = [];
  getProduct()async{
    var response = await http.get(Uri.parse(base_url+'products/'));
    var responsedecode = jsonDecode(response.body);
    if (response.statusCode == 200) {
      // CategoryModel categories = CategoryModel.fromJson(responsedecode);
      for (var e in responsedecode) {
        products.add(ProductModel.fromJson(e)); 
      }
    }
    update();
  print(responsedecode);
  }
}