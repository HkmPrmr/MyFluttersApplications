import 'package:dio/dio.dart';
import 'package:sixth_homework/model/errormodel.dart';
import 'package:sixth_homework/model/productsmodel.dart';
import 'package:sixth_homework/model/resultmodel.dart';

class ServiceLayerConfig  {
Dio dio = Dio();
late Response response;
String baseUrl = "https://dummyjson.com/products";
}

abstract class ProductService extends ServiceLayerConfig{
  Future<List<ResultModel>> getProducts();
  // TODO:Post product
  //createProduct (ResultModel product);
}
class ProductServiceImp extends ProductService{
  @override
  Future<List<ResultModel>> getProducts() async {
    response = await dio.get(baseUrl);
    // print(response);
    // print('\n***************\n');
    // print(response.data['products']);
    // print('\n***************\n');
    // print(response.data["products"].length);
    // print('\n***************\n');
    // print(response.statusCode);
    if(response.statusCode==200){
      List<ProductModel> productss = List.generate(response.data['products'].length, 
      (index) => ProductModel.fromMap(response.data['products'][index]) );
      print("Hello   world");
      return productss;
    }
    else {
      return [ErrorModel(massege: "Not Found!!!")];
    }
  }

}