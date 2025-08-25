import 'dart:convert';

void latihanParsingJson() {
  /// Initiate JSON Data
  final String jsonData = """{
    "id": 167,
    "name": "Rifa Fauzi",
    "address": "Jakarta",
    "hobbies" : ["basketball", "badminton"],
    "social_media" : {"instagram" : "@rifafauzi", "twitter" : "@rifafauziTwitter"}
  }
  """;

  /// Parsing JSON Data
  final Map<String, dynamic> parsedJson = jsonDecode(jsonData);

  final num id = parsedJson["id"];
  final String name = parsedJson['name'];
  final String address = parsedJson['address'];
  final List<dynamic> hobbies = parsedJson['hobbies'];

  print('''
  id:  $id,
  name: $name,
  address: $address,
  hobbies:  $hobbies,
''');

  User user = User.fromJson(parsedJson);

  print('''
user id: ${user.id} ${user.id.runtimeType}
user name:  ${user.name} ${user.name.runtimeType},
user address: ${user.address} ${user.address.runtimeType},
user instagram:  ${user.socialMedia.instagram},
user twitter: ${user.socialMedia.twitter},
user hobbies: ${user.hobbies},
''');

  print(user.runtimeType);
  print(parsedJson.runtimeType);
}

/// Class User
class User {
  final num id;
  final String name;
  final String address;
  final SocialMedia socialMedia;
  final List<String> hobbies;

  const User({
    required this.id,
    required this.name,
    required this.address,
    required this.socialMedia,
    required this.hobbies,
  });

  /// Method factory
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as num,
      name: json['name'] as String,
      address: json['address'] as String,
      socialMedia: SocialMedia.fromJson(json['social_media']),
      hobbies: List<String>.from(json['hobbies'].map((value) => value)),
    );
  }

  /// Return data to Json / Json Stringify
  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'address': address};
}

/// Class social media
class SocialMedia {
  final String instagram;
  final String twitter;

  const SocialMedia({required this.instagram, required this.twitter});

  /// Method factory
  factory SocialMedia.fromJson(Map<String, dynamic> json) =>
      SocialMedia(instagram: json['instagram'], twitter: json['twitter']);
}
