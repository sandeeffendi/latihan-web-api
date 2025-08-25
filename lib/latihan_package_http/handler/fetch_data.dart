import 'dart:convert';
import 'dart:io';
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:latihan_web_api/latihan_package_http/model/post_method.dart';
import 'package:latihan_web_api/latihan_package_http/model/result.dart';

Future<Result<PostMethod>> fetchContent() async {

  try {
    /// Initiate instance Uri object
    final url = Uri.https('jsonplaceholder.typicode.com', 'posts/1');

    /// Get response with Http Get Request
    final response = await http.get(
      url,
      headers: {'Accept': 'application/json'},
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      /// Parsing JSON from Http response
      final jsonResponse = jsonDecode(response.body);

      /// Mapping Parsed JSON Response with Post Method instance factory
      final post = PostMethod.fromJson(jsonResponse);
      return Success(post);
    } else {
      return Failure('Failed to fetch data');
    }
  } 
  
  /// Error handling
  catch (e) {
    if (e is SocketException) {
      return Failure('No internet connection. Please try again later.');
    } else if (e is TimeoutException) {
      return Failure('Request timeout. Please try again later');
    } else if (e is FormatException) {
      return Failure('Failed to load response data.');
    } else {
      return Failure('Caught an error:  $e');
    }
  }
}
