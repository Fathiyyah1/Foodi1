import 'package:foodi/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

//in dart var starts with _ then its private

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList =
      []; //the data is saved in pop..repo will be saved here in this empty list
  List<dynamic> get popularProductList => _popularProductList;

//async because the future void the data will be recieved
  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      _popularProductList = [];
      //_popularProductList.addAll();
      update();
    } else {}
  }
}
