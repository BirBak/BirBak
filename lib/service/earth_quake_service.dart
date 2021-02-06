import 'package:birbak/core/models/earth_quake_model.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class EarthQuakeService {
  final String _baseUrl = 'https://turkiyedepremapi.herokuapp.com/';
  Dio dio = Dio();
  Future<List<EarthQuake>> fetchEQ() async {
    var res = await http.get('$_baseUrl/api', headers: {
      'content-type': 'application/json'
    }).onError((error, stackTrace) {
      throw (error);
    });
    print(res);
    var _eq = earthQuakeFromJson(res.toString());
    return _eq;
  }
}
