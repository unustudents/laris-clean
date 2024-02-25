import 'package:get/get.dart';

import '../models_model.dart';

class ModelsProvider extends GetConnect {
  final String _uri = "https://api.github.com/users/mp-class-si-unugha-2024";
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Models.fromJson(map);
      if (map is List) return map.map((item) => Models.fromJson(item)).toList();
    };
    httpClient.baseUrl = _uri;
  }

  Future<Map<String, dynamic>> getModels() async {
    final response = await get(_uri);
    return response.body;
  }

  Future<Response<Models>> postModels(Models models) async =>
      await post('models', models);
  Future<Response> deleteModels(int id) async => await delete('models/$id');
}
