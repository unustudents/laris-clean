import 'package:get/get.dart';

import '../models_model.dart';

class ModelsProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Models.fromJson(map);
      if (map is List) return map.map((item) => Models.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Models?> getModels(int id) async {
    final response = await get('models/$id');
    return response.body;
  }

  Future<Response<Models>> postModels(Models models) async =>
      await post('models', models);
  Future<Response> deleteModels(int id) async => await delete('models/$id');
}
