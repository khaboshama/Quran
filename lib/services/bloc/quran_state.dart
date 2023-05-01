import 'package:flutter/material.dart';

@immutable
abstract class QuranState {
  const QuranState();
}

class QuranStateLoading extends QuranState {
  const QuranStateLoading();
}

class QuranStateSearchSuccess extends QuranState {

}