import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/presentation/search/module/data/repository/QuranProviderImpl.dart';
import 'package:quran/presentation/search/module/view/aya_item_view.dart';
import 'package:quran/presentation/search/screen/search_view.dart';
import 'package:quran/services/bloc/quran_bloc.dart';
import 'package:quran/services/bloc/quran_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quran',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<QuranBloc>(
        create: (context) => QuranBloc(QuranProviderImpl()),
        child: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuranBloc, QuranState>(builder: (context, state) {
      if (state is QuranStateSearchSuccess) {
        return SearchView(items: state.ayaList);
      } else if (state is QuranStateSearchFailed){
        return SearchView(items: List<AyaItemView>.empty());
      } else {
        return SearchView(items: List<AyaItemView>.empty());
      }
    });
  }
}
