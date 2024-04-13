import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';

import 'package:intern_project/api/server.dart';
import 'package:intern_project/model/course.dart';
import 'package:intern_project/util/urls.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  final Server _server = Server();

  Map<int, bool> flag = {};
  bool currentvalue = false;

  CourseModel _courseModel = CourseModel();
  bool _loader = false;

  CourseModel get courseModel => _courseModel;
  bool get loader => _loader;

  getRequest() async {
    _loader = true;
    update();
    try {
      http.Response response = await _server.getRequest(url: UrlList.url);

      if (jsonDecode(response.body)['status'] == 'success') {
        log(jsonDecode(response.body)['status']);
        _courseModel = CourseModel.fromJson(jsonDecode(response.body));
        log(_courseModel.data!.title.toString());
      }

      _loader = false;
      update();
    } catch (e) {
      log(e.toString());
    }
  }

  void onTap(int index) {
    flag[index] = !currentvalue;
    currentvalue = flag[index]!;
    update();
  }
}
