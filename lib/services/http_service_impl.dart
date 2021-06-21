import 'package:dio/dio.dart';
import 'package:news/services/http_service.dart';

const BASE_URL = "https://newsapi.org/";
const API_KEY = "96c4af7f7f82490d9f6571c4bf507d68";

class HttpServiceImpl implements HttpService{


 late Dio _dio;

  @override
  Future<Response> getRequest(String url) async{
  
  Response response;
    try {
      response = await _dio.get(url);
    } on DioError catch (e) {
          print(e.message);
          throw Exception(e.message);
    }

    return response;
  }


  initializeInterceptors(){
    _dio.interceptors.add(InterceptorsWrapper(
        onError: (error, errorInterceptorHandler ){
          print(error.message);
        },
        onRequest: (request, requestInterceptorHandler){
          print("${request.method} | ${request.path}");
        },
        onResponse: (response, responseInterceptorHandler) {
          print('${response.statusCode} ${response.statusCode} ${response.data}');
        }
    ));
  }

  @override
  void init() {
    _dio = Dio(BaseOptions(
      baseUrl: BASE_URL,
      headers: {"Authorization" : "Bearer $API_KEY"}
      ));

      initializeInterceptors();
  }
}