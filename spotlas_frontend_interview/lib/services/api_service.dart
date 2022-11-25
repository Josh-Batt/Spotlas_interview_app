import 'dart:developer';

import 'package:http/http.dart' as http;
import '../constants/constants.dart';
import '../models/user_model.dart';
import 'dart:async';

// ----- WORKS -----

class ApiService {
  Future<List<UserModel>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseURL + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<UserModel> _model = userModelFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}

// ----- WORKS - END -----

// ----- TESTING -----

// class ApiService {
//   Future<List<UserModel>?> getUsers() async {
//     UserModel? user;
//     try {
//       var url = Uri.parse(ApiConstants.baseURL + ApiConstants.usersEndpoint);
//       var response = await http.get(url);
//       if (response.statusCode == 200) {
//         List<UserModel> user = userModelFromJson(response.body);
//         StaticVariable.user = user;
//         return user;
//       }
//     } catch (e) {
//       log(e.toString());
//     }
//   }
// }

// Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
//       'id': instance.id ?? StaticVariable!.user.id,
//       'caption': instance.caption ?? StaticVariable!.user.bio,
//       'media': instance.media ?? StaticVariable!.user.name,
//       'created_at': instance.createdAt ?? StaticVariable!.user.interests,
//       'author': instance.author ?? StaticVariable!.user.presentation,
//       'spot': instance.spot ?? StaticVariable!.user.links,
//       'relevant_comments': instance.relevantComments ?? StaticVariable!.user.location,
//       'number_of_comments': instance.numberOfComments ?? StaticVariable!.user.school,
//       'liked_by': instance.likedBy ?? StaticVariable!.user.ccupation,
//       'number_of_likes': instance.numberOfLikes ?? StaticVariable!.user.links,
//       'tags': instance.tags ?? StaticVariable!.user.location,
//       'url': instance.url ?? StaticVariable!.user.school,
//     };

// ----- TESTING END -----