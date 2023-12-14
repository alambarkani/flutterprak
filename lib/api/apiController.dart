import 'package:dio/dio.dart';

class ApiController{
  Future<Map<String, dynamic>> getDatas() async{
    Response response = await Dio().get('https://api-berita-indonesia.vercel.app' + '/tempo/gaya/');
    final datas = response.data;
    return datas;
  }
}