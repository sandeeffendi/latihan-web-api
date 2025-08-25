

Future getContect() async {
  final url = Uri.https('jsonplaceholder.typicode.com', 'posts/1');

  final response = await http.get(url);
}
