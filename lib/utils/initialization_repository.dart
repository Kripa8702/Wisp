import 'dart:developer';

import 'package:wisp_app/utils/dio_client.dart';

class InitializationRepository {
  late DioClient dioClient;

  Future<void> init() async {
    dioClient = DioClient();
    log("::::::::::::::::::::: DioClient Initialized :::::::::::::::::::::");
  }
}
