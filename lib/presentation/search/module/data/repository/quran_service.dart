import 'package:quran/presentation/search/module/data/repository/QuranProviderImpl.dart';
import 'package:quran/presentation/search/module/data/repository/quran_provider.dart';
import 'package:quran/presentation/search/module/domain/aya_item.dart';

class QuranService implements QuranProvider {
  final QuranProvider _quranProvider;

  const QuranService(this._quranProvider);

  factory QuranService.firebase() => QuranService(QuranProviderImpl());

  @override
  Future<List<AyaItem>> searchByKeyword({required String keyword}) {
    return _quranProvider.searchByKeyword(keyword: keyword);
  }
}
