import 'package:fpdart_riverpod/datasources/get_all_event/get_all_event.dart';
import 'package:fpdart_riverpod/datasources/get_all_event/get_all_event_state.dart';
import 'package:fpdart_riverpod/providers/storage_service_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'event_list_provider.g.dart';

@riverpod
Future<GetAllEventState> eventList(EventListRef ref) async {
  final service = ref.watch(
    storageServiceProvider,
  );
  return getAllEvent.run(service);
}
