import 'package:get/get.dart';
import 'package:news/core/model/article.dart';
import 'package:news/core/model/news_response_model.dart';
import 'package:news/core/repository/news_repo.dart';
import 'package:news/services/http_service.dart';
import 'package:news/services/http_service_impl.dart';

class NewsRepoImpl implements NewsRepo{

  late HttpService _httpService;

  NewsRepoImpl(){

    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }

  @override
  Future<List<Article>> getNewsHeadline() async {

  
      final response = await _httpService.getRequest("/v2/top-headlines?country=us"); 
      final parseResponse = NewsResponseModel.fromJson(response.data);
      return parseResponse.articles;
  }

  @override
  Future<List<Article>> getSearchedNews(String query) async{


      final response = await _httpService.getRequest("/v2/everything?q=$query"); 
      final parseResponse = NewsResponseModel.fromJson(response.data);
      return parseResponse.articles;

    
  }
 
}