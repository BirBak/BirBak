import 'package:birbak/util/core/models/earth_quake_model.dart';
import 'package:http/http.dart' as http;

class EarthQuakeService {
  final String _baseUrl = 'https://deprem.odabas.xyz/api/pure_api.php';
  //'https://turkiyedepremapi.herokuapp.com/';
  Future<List<EarthQuake>> fetchEQ() async {
    var res = await http.get('$_baseUrl/api',
        headers: {'content-type': 'application/json'}).catchError((onError) {
      throw (onError);
    });
    print(res.body);
    var _eq = earthQuakeFromJson(res.body);
    return _eq;
  }
}
