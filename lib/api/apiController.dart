import 'package:dio/dio.dart';

class ApiController{
  Future<List<dynamic>> getDatas() async{
    final response = await Dio().get('https://saiyaapi.site' + '/cnth/prak');
    final datas = response.data['payload'];
    return datas;
  }
}