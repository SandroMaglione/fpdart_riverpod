import 'package:fpdart_riverpod/entities/event_entity.dart';

abstract class StorageService {
  Future<List<EventEntity>> get getAll;
  Future<EventEntity> put(String title);
}
