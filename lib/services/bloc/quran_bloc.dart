import 'package:bloc/bloc.dart';
import 'package:quran/presentation/search/module/data/repository/quran_provider.dart';
import 'package:quran/presentation/search/module/mapper.dart';
import 'package:quran/services/bloc/quran_event.dart';
import 'package:quran/services/bloc/quran_state.dart';

class QuranBloc extends Bloc<QuranEvent, QuranState> {
  QuranBloc(QuranProvider provider)
      : super(const QuranStateLoading(isLoading: false, exception: null)) {
    on<QuranEventSearch>((event, emit) async {
      emit(const QuranStateLoading(isLoading: true, exception: null));
      try {
        final list = await provider.searchByKeyword(keyword: event.keyword);
        final ayaItemViewList =
            list.map((ayaItem) => ayaItem.toAyaItemView()).toList();
        emit(QuranStateSearchSuccess(ayaList: ayaItemViewList));
      } on Exception catch (e) {
        emit(QuranStateLoading(isLoading: false, exception: e));
      }
    });
  }
}
