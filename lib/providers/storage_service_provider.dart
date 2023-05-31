import 'package:fpdart_riverpod/services/storage_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'storage_service_provider.g.dart';

@riverpod
Future<StorageService> storageService(StorageServiceRef ref) async {
  /// Return concrete instance of [StorageService]
  throw UnimplementedError();
}
