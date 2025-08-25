import 'package:http/http.dart' as http;

Future postContent() async {
  final url = Uri.https('jsonplaceholder.typicode.com', 'posts');

  final response = await http.post(
    /// Https path
    url,

    /// Response Headers
    headers: {
      'User-Agent': 'PostmanRuntime/7.36.3',
      'Accept': 'application/json',
      'Accept-Encoding': 'gzip, deflate',
      'Connection': 'keep-alive',
    },

    /// Reseponse Body
    body: {
      'title': "aowefijiawjefew",
      'body': 'asdfoiiwoefoiwejfoiwjefoiwejfoiewjf',
      'userId': '1',
    },
  );

  print('response: ${response.statusCode}');
  print('body:  ${response.body}');
}
