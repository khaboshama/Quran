import 'package:flutter/material.dart';
import 'package:quran/presentation/search/module/view/aya_item_view.dart';
@immutable
abstract class QuranState {
  const QuranState();
}

class QuranStateLoading extends QuranState {
  final bool isLoading;
  final Exception? exception;

  const QuranStateLoading({
    required this.isLoading,
    required this.exception,
  });
}

class QuranStateSearchSuccess extends QuranState {
  final List<AyaItemView> ayaList;

  const QuranStateSearchSuccess({required this.ayaList});
}
