import 'package:flutter_junia/model/message_model.dart';

class UserModel {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final List<String> roles;
  final DateTime createdAt;
  final DateTime updatedAt;

  // final List<MessageModel> messages;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.roles,
    required this.createdAt,
    required this.updatedAt,
    // required this.messages,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      roles: List<String>.from(json['roles']),
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      // messages: List<MessageModel>.from(
          // json['Messages'].map((x) => MessageModel.fromJson(x))),
    );
  }
}