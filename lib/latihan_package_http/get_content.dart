import 'package:http/http.dart' as http;

Future getContent() async {
  final url = Uri.https('jsonplaceholder.typicode.com', 'posts/1');

  final response = await http.get(
    url,
    headers: {
      // 'User-Agent': 'PostmanRuntime/7.36.3',
      'Accept': 'application/json',
      // 'Accept-Encoding': 'gzip, deflate',
      // 'Connection': 'keep-alive',
    },
  );

  print('status: ${response.statusCode}');
  print('response: ${response.body}');
}
