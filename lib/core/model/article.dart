import 'package:json_annotation/json_annotation.dart';
part 'article.g.dart';

class Article{

Article();

  @JsonKey(name : "author")
  late String author;

  @JsonKey(name : "title")
  late String title;

  @JsonKey(name : "description")
  late String desc;

  @JsonKey(name : "url")
  late String url;

  @JsonKey(name : "urlToImage")
  late String urlToImage;

  @JsonKey(name : "content")
  late String content;

  @JsonKey(name : "publishedAt") 
  late String publishedAt;



  DateTime? get getpublishedAtDate => DateTime.tryParse(publishedAt);

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}