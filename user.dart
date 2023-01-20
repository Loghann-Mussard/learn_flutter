import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @Default("") String id,
    @Default("")String name,
    @Default("")String email,
}) = _User;
}


