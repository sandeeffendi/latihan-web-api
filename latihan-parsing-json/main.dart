import 'dart:convert';
import 'dart:ffi';

void main() {
  final String jsonData = """{
    "id": 167,
    "name": "Rifa Fauzi",
    "address": "Jakarta"
  }
  """;

  final Map<String, dynamic> parsedJson = jsonDecode(jsonData);

  print('${parsedJson.runtimeType} : $jsonData');

  final num id = parsedJson["id"];
  final String name = parsedJson['name'];
  final String address = parsedJson['address'];

  print('''
  id:  $id,
  name: $name,
  address: $address,
''');

  User user = User.fromJson(parsedJson);

  print('''
user id: ${user.id} ${user.id.runtimeType}
user name:  ${user.name} ${user.name.runtimeType},
user address: ${user.address} ${user.address.runtimeType},
''');

  final parsedJsonFromUser = User.fromJson(parsedJson);
  final stringifyJson = jsonEncode(parsedJsonFromUser);

  print(user.runtimeType);
  print(parsedJson.runtimeType);
}

/// Class User
class User {
  final num id;
  final String name;
  final String address;

  const User({required this.id, required this.name, required this.address});

  /// Method factory
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as num,
      name: json['name'] as String,
      address: json['address'] as String,
    );
  }

  /// Return data to Json / Json Stringify
  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'address': address};
}
