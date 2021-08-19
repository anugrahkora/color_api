
import 'package:color_api/model/model.dart';
import 'package:dio/dio.dart';

class ColorApi {
  var url = 'https://www.thecolorapi.com/id?rgb=0,71,171';
  var _dio = Dio();

  Future<ColorModel> fetchServiceApi() async {
    try {
      Response response = await _dio.get(url);
      // return response.data;
      final covidStateWise = colorApiFromJson(response.toString());
      return covidStateWise;
      // return (response.data as List)
      //     .map((x) => covidStateWiseFromJson(x))
      //     .toList();
    } on DioError catch (e) {
      print(e.error);
    }
  }
}
