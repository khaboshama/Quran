import 'package:quran/presentation/search/module/domain/aya_item.dart';
abstract class QuranProvider {

  Future<List<AyaItem>> searchByKeyword({
    required String keyword
  });
}