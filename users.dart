import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users.freezed.dart';

@freezed
abstract class Users with _$Users {
  const factory Users({
    @Default("") String id,
    @Default("")String name,
    @Default("")String email,
  }) = _Users;
}