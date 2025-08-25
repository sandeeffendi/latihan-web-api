import 'package:latihan_web_api/latihan_package_http/handler/fetch_data.dart';
import 'package:latihan_web_api/latihan_package_http/model/result.dart';

void main(List<String> arguments) async {
  final output = await fetchContent();

  switch (output) {
    case Success(value: var data):
      print('Success:  $data');

    case Failure(error: var message):
      print('Failure: $message');
  }
}
