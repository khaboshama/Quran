import 'package:quran/presentation/search/module/domain/aya_item.dart';

class SearchAyaResponse {
  int code;
  String status;
  SearchAyaDataResponse searchAyaDataResponse;

  SearchAyaResponse({
    required this.code,
    required this.status,
    required this.searchAyaDataResponse
  });

  factory SearchAyaResponse.fromJson(Map<String, dynamic> json) =>
      SearchAyaResponse(
          code: json["code"],
          status: json["status"],
          searchAyaDataResponse: json["data"]
      );
}

class SearchAyaDataResponse {
  int count;
  List<AyaItem> ayaList;

  SearchAyaDataResponse({
    required this.count,
    required this.ayaList
  });

  factory SearchAyaDataResponse.fromJson(Map<String, dynamic> json) =>
      SearchAyaDataResponse(
          count: json["count"],
          ayaList: List<AyaItem>.from(json["matches"].map((x) => AyaItem.fromJson(x))));
}

