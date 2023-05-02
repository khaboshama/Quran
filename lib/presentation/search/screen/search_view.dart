import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran/presentation/search/module/view/aya_item_view.dart';
import 'package:quran/presentation/search/screen/aya_list_view.dart';
import 'package:quran/services/bloc/quran_bloc.dart';
import 'package:quran/services/bloc/quran_event.dart';
class SearchView extends StatefulWidget {
  final List<AyaItemView> items;

  const SearchView({Key? key, required this.items}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
