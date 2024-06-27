import 'package:flutter/material.dart';

class AddTaskEntity {
  final String title;
  final String description;
  final String date;
  final String time;
  final String status;

  AddTaskEntity({
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    required this.status,
  });
}