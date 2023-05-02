import 'package:flutter/material.dart';
import 'package:quran/presentation/search/module/view/aya_item_view.dart';

class AyaListView extends StatelessWidget {
  final List<AyaItemView> items;

  const AyaListView({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index].content),
        );
      },
    );
  }
}
