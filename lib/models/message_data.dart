class MessageData {
  MessageData({
    required this.id,
    required this.from,
    required this.time,
    this.text,
    this.pictureUrl,
  });

  final int id;
  final String from;
  String? pictureUrl;
  String? text;
  final DateTime time;
}
