import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quran/constants/constants.dart';
import 'package:quran/presentation/search/module/data/model/search_aya_response.dart';
import 'package:quran/presentation/search/module/data/repository/quran_provider.dart';
import 'package:quran/presentation/search/module/domain/aya_item.dart';

class QuranProviderImpl implements QuranProvider {
  @override
  Future<List<AyaItem>> searchByKeyword({required String keyword}) async {
    final response = await http.get(Uri.parse("$baseUrl" + "search/$keyword/all/en"));

    if (response.statusCode == 200) {
      final searchAyaResponse =
          SearchAyaResponse.fromJson(jsonDecode(response.body));
      return searchAyaResponse.searchAyaDataResponse.ayaList;
    } else {
      throw Exception();
    }
  }
}
