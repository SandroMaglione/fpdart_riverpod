import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
final class EventEntity extends Equatable {
  final int id;
  final String title;
  final DateTime createdAt;

  const EventEntity(this.id, this.title, this.createdAt);

  @override
  List<Object?> get props => [id];
}
