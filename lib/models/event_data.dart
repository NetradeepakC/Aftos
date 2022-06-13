class EventData {
  EventData({
    required this.id,
    required this.name,
    required this.pictureUrl,
    required this.commonThings,
    //required this.difThings,
  });

  int id;
  String name;
  String pictureUrl;
  List<int> commonThings;
//List<int> difThings;
}
