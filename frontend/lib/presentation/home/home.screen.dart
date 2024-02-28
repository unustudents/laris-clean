import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:laris_clean/domain/model/models_model.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: Obx(
        () {
          if (controller.isEmpty.isTrue) {
            return const Center(child: Text("Data tidak ada"));
          } else if (controller.users.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }
          var data = Models(github: Github.fromJson(controller.users.toJson()));
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(data.github!.login.toString()),
              Text(data.github!.id.toString()),
              Text(data.github!.nodeId.toString()),
              Text(data.github!.avatarUrl.toString()),
              Text(data.github!.gravatarId.toString()),
              Text(data.github!.url.toString()),
              Text(data.github!.htmlUrl.toString()),
              Text(data.github!.followersUrl.toString()),
            ],
          );
        },
      ),
    );
  }
}
