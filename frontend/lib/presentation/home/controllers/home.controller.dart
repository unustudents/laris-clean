import 'package:get/get.dart';
import 'package:laris_clean/domain/model/providers/models_provider.dart';

class HomeController extends GetxController {
  // final count = 0.obs;
  final RxMap<String, dynamic> users = RxMap();
  final ModelsProvider provider = ModelsProvider();
  @override
  void onInit() {
    super.onInit();
    provider.getModels().then((value) => users.value = value);
  }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  //
  //void increment() => count.value++;
  getData() async {
    return await getData();
  }
}
