import 'package:equatable/equatable.dart';

final class EventEntity extends Equatable {
  final int id;
  final String title;
  final DateTime createdAt;

  const EventEntity(this.id, this.title, this.createdAt);

  @override
  List<Object?> get props => [id];
}
