import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:meta/meta.dart';

// final welcome = welcomeFromJson(jsonString);
// Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

// String welcomeToJson(Welcome data) => json.encode(data.toJson());

// ----- HIS STARTING CODE -----
List<UserModel> userModelFromJson(String str) =>
    List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
// ----- HIS STARTING CODE END -----

class UserModel {
  UserModel({
    required this.id,
    required this.caption,
    required this.media,
    required this.createdAt,
    required this.author,
    required this.spot,
    @required this.relevantComments,
    required this.numberOfComments,
    required this.likedBy,
    required this.numberOfLikes,
    required this.tags,
    required this.url,
  });

  String id;
  Caption caption;
  List<Media> media;
  DateTime createdAt;
  Author author;
  Spot spot;
  dynamic relevantComments;
  int numberOfComments;
  List<Author>? likedBy;
  int numberOfLikes;
  dynamic tags;
  String url;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        caption: Caption.fromJson(json["caption"]),
        media: List<Media>.from(json["media"].map((x) => Media.fromJson(x))),
        createdAt: DateTime.parse(json["created_at"]),
        author: Author.fromJson(json["author"]),
        spot: Spot.fromJson(json["spot"]),
        relevantComments: json["relevant_comments"],
        numberOfComments: json["number_of_comments"],
        likedBy: json["liked_by"] == null
            ? null
            : List<Author>.from(
                json["liked_by"].map((x) => Author.fromJson(x))),
        numberOfLikes: json["number_of_likes"],
        tags: json["tags"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "caption": caption.toJson(),
        "media": List<dynamic>.from(media.map((x) => x.toJson())),
        "created_at": createdAt.toIso8601String(),
        "author": author.toJson(),
        "spot": spot.toJson(),
        "relevant_comments": relevantComments,
        "number_of_comments": numberOfComments,
        "liked_by": likedBy == null
            ? null
            : List<dynamic>.from(likedBy!.map((x) => x.toJson())),
        "number_of_likes": numberOfLikes,
        "tags": tags,
        "url": url,
      };
}

class Author {
  Author({
    required this.id,
    required this.username,
    required this.photoUrl,
    required this.fullName,
    required this.isPrivate,
    required this.isVerified,
    required this.followStatus,
  });

  String id;
  String username;
  String photoUrl;
  String fullName;
  bool isPrivate;
  bool isVerified;
  String followStatus;

  factory Author.fromJson(Map<String, dynamic> json) => Author(
        id: json["id"],
        username: json["username"],
        photoUrl: json["photo_url"],
        fullName: json["full_name"],
        isPrivate: json["is_private"],
        isVerified: json["is_verified"],
        followStatus:
            json["follow_status"] == null ? null : json["follow_status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "photo_url": photoUrl,
        "full_name": fullName,
        "is_private": isPrivate,
        "is_verified": isVerified,
        "follow_status": followStatus == null ? null : followStatus,
      };
}

class Caption {
  Caption({
    required this.text,
    required this.tags,
  });

  String text;
  List<Tag>? tags;

  factory Caption.fromJson(Map<String, dynamic> json) => Caption(
        text: json["text"],
        tags: json["tags"] == null
            ? null
            : List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "tags": tags == null
            ? null
            : List<dynamic>.from(tags!.map((x) => x.toJson())),
      };
}

class Tag {
  Tag({
    required this.id,
    required this.displayText,
    required this.tagText,
    required this.url,
    required this.type,
  });

  String id;
  String displayText;
  String tagText;
  String url;
  String type;

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        id: json["id"],
        displayText: json["display_text"],
        tagText: json["tag_text"],
        url: json["url"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "display_text": displayText,
        "tag_text": tagText,
        "url": url,
        "type": type,
      };
}

class Media {
  Media({
    required this.url,
    required this.blurHash,
    required this.type,
  });

  String url;
  String blurHash;
  TypeEnum? type;

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        url: json["url"],
        blurHash: json["blur_hash"] == null ? null : json["blur_hash"],
        type: typeEnumValues.map[json["type"]],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "blur_hash": blurHash == null ? null : blurHash,
        "type": typeEnumValues.reverse[type],
      };
}

enum TypeEnum { IMAGE }

final typeEnumValues = EnumValues({"image": TypeEnum.IMAGE});

class Spot {
  Spot({
    required this.id,
    required this.name,
    required this.types,
    required this.logo,
    required this.location,
    required this.isSaved,
  });

  String id;
  String name;
  List<TypeElement> types;
  Media logo;
  Location location;
  bool isSaved;

  factory Spot.fromJson(Map<String, dynamic> json) => Spot(
        id: json["id"],
        name: json["name"],
        types: List<TypeElement>.from(
            json["types"].map((x) => TypeElement.fromJson(x))),
        logo: Media.fromJson(json["logo"]),
        location: Location.fromJson(json["location"]),
        isSaved: json["is_saved"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "types": List<dynamic>.from(types.map((x) => x.toJson())),
        "logo": logo.toJson(),
        "location": location.toJson(),
        "is_saved": isSaved,
      };
}

class Location {
  Location({
    required this.latitude,
    required this.longitude,
    required this.display,
  });

  double latitude;
  double longitude;
  String display;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
        display: json["display"],
      );

  Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
        "display": display,
      };
}

class TypeElement {
  TypeElement({
    required this.id,
    required this.name,
    required this.url,
  });

  int id;
  String name;
  String url;

  factory TypeElement.fromJson(Map<String, dynamic> json) => TypeElement(
        id: json["id"],
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "url": url,
      };
}

class EnumValues<T> {
  late Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
