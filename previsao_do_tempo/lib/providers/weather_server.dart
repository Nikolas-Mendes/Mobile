import 'package:dio/dio.dart';

Future getData() async{
  var dio = Dio();
  var result = await dio.get("https://api.hgbrasil.com/weather?key=855871e1&woeid=455823");

  return result.data;
}