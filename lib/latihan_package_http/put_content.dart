import 'package:http/http.dart' as http;

Future putContent() async {
  final url = Uri.https('jsonplaceholder.typicode.com', 'posts/1');

  final response = await http.put(
    url,
    headers: {
      'User-Agent': 'PostmanRuntime/7.36.3',
      'Accept': 'application/json',
      'Accept-Encoding': 'gzip, deflate',
      'Connection': 'keep-alive',
    },

    body: {
      'userId': '1',
      'id': '1',
      'title': 'ini method put',
      'body': 'body telah di edit',
    },
  );

  print('response: ${response.statusCode}');
  print('body: ${response.body}');
}
