import 'package:flutter/material.dart';
import 'package:quran/presentation/search/screen/aya_list_view.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}


class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Quran Search")),
      body: Column(
        children: [
          TextField(
              onChanged: (text) {
                print(text);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a search keyword',
              )),
          const Text("kk"),
          Expanded(
            child: AyaListView(
                items: List<String>.generate(200, (i) => 'Item $i')),
          ),
        ],
      ),
    );
  }
}
