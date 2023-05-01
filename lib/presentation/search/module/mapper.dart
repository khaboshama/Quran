import 'package:quran/presentation/search/module/domain/aya_item.dart';
import 'package:quran/presentation/search/module/view/aya_item_view.dart';

extension AyaItemViewEx on AyaItem {
  AyaItemView toAyaItemView() => AyaItemView(
        content: content,
        suraName: suraName,
        numberInSurah: numberInSurah,
      );
}
