
import 'package:json_annotation/json_annotation.dart';
import 'package:news/core/model/article.dart';

part 'news_response_model.g.dart';

class NewsResponseModel{

  NewsResponseModel();

  @JsonKey(name: "status")
  late String status;

  @JsonKey(name: "totalResults")
  late String totalResults;

  @JsonKey(name: "articles")
  late List<Article> articles;


  factory NewsResponseModel.fromJson(Map<String, dynamic> json) => _$NewsResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$NewsResponseModelToJson(this);

}