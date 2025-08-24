// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    final int id;
    final String name;
    final String address;
    final List<String> hobbies;
    final SocialMedia socialMedia;

    User({
        required this.id,
        required this.name,
        required this.address,
        required this.hobbies,
        required this.socialMedia,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        address: json["address"],
        hobbies: List<String>.from(json["hobbies"].map((x) => x)),
        socialMedia: SocialMedia.fromJson(json["social_media"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "address": address,
        "hobbies": List<dynamic>.from(hobbies.map((x) => x)),
        "social_media": socialMedia.toJson(),
    };
}

class SocialMedia {
    final String instagram;
    final String twitter;

    SocialMedia({
        required this.instagram,
        required this.twitter,
    });

    factory SocialMedia.fromJson(Map<String, dynamic> json) => SocialMedia(
        instagram: json["instagram"],
        twitter: json["twitter"],
    );

    Map<String, dynamic> toJson() => {
        "instagram": instagram,
        "twitter": twitter,
    };
}
