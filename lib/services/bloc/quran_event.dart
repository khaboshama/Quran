import 'package:flutter/material.dart';

@immutable
abstract class QuranEvent {
  const QuranEvent();
}

class QuranEventInitialize extends QuranEvent {
  const QuranEventInitialize();
}

class QuranEventSearch extends QuranEvent {
  final String keyword;
  const QuranEventSearch(this.keyword);
}

