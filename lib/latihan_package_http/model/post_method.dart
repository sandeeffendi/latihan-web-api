class PostMethod {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostMethod({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory PostMethod.fromJson(Map<String, dynamic> json) => PostMethod(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };

  @override
  String toString() {
    return "Post: userId: $id, id: $id, title: $title, body: $title";
  }
}
