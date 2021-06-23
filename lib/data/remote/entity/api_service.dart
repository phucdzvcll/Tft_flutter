import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../entity/champ_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://fake-api-json-server-p5k.herokuapp.com/api/")
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET('/champions')
  Future<List<ChampResponse>> getListChamp();
}
