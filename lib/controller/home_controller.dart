import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../model/category_model.dart';
import '../model/subcategory_model.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    categories();
  }

  List<Category> categoryList = [];
  List<SubCategory> subcategoryList = [];
  List allproduct = [];
  List product = [];
  categories() async {
    var url = Uri.parse('https://sta.farawlah.sa/api/mobile/categories');
    http.Response response = await http.get(url);
    print(response.body);
    var json = response.body;
    categoryList = categoryFromJson(json);

    update();
  }

  subcategories(int id) async {
    var url = Uri.parse(
        'https://sta.farawlah.sa/api/mobile/subcategories?parent_id=$id');
    http.Response response = await http.get(url);
    print(response.body);
    var json = response.body;
    subcategoryList = subCategoryFromJson(json);

    update();
  }

  allProducts(int id) async {
    var url = Uri.parse(
        'https://sta.farawlah.sa/api/mobile/products?parent_category_id=$id&category_id=0&store_id=2&offset=0&limit=20&sort_by=sale_price&sort_type=DESC');
    http.Response response = await http.get(url);
    print(response.body);

    allproduct = jsonDecode(response.body) as List;

    update();
  }

  products(int id) async {
    var url = Uri.parse(
        'https://sta.farawlah.sa/api/mobile/products?category_id=$id&store_id=2&offset=0&limit=20&sort_by=sale_price&sort_type=DESC');
    http.Response response = await http.get(url);
    print(response.body);

    product = jsonDecode(response.body) as List;

    update();
  }
}
