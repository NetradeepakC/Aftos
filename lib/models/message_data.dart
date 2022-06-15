class MessageData {
  MessageData.text({
    required this.id,
    required this.from,
    required this.text,
  });
  MessageData.image({
    required this.id,
    required this.from,
    required this.pictureUrl,
  });

  final int id;
  final String from;
  String? pictureUrl;
  String? text;
}
