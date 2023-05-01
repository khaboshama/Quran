class AyaItem {
  String content;
  String suraName;
  int numberInSurah;

  AyaItem({
    required this.content,
    required this.suraName,
    required this.numberInSurah
  });

  factory AyaItem.fromJson(Map<String, dynamic> json) =>
      AyaItem(
          content: json["text"],
          suraName: json["surah"]["englishName"],
          numberInSurah: json["numberInSurah"]
      );
}
