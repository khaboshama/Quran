import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/presentation/search/module/view/aya_item_view.dart';
import 'package:quran/presentation/search/screen/aya_list_view.dart';
import 'package:quran/services/bloc/quran_bloc.dart';
import 'package:quran/services/bloc/quran_event.dart';
import 'package:quran/services/bloc/quran_state.dart';

class SearchView extends StatefulWidget {
  final List<AyaItemView> items;

  const SearchView({Key? key, required this.items}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<QuranBloc, QuranState>(
      listener: (context, state) {
        if (state is QuranStateLoading) {
          if (state.exception != null) {
            // display error dialog
            // hide loading indicator
          } else if (state.isLoading) {
            // display loading indicator
          } else {
            // hide loading indicator
          }
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text("Quran Search")),
        body: Column(
          children: [
            TextField(
                onChanged: (text) {
                  print(text);
                  context.read<QuranBloc>().add(QuranEventSearch(text));
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search keyword',
                )),
            const Text("kk"),
            Expanded(
              child: AyaListView(
                items: widget.items,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
