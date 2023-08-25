import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart_riverpod/datasources/get_all_event/get_all_event.dart';
import 'package:fpdart_riverpod/datasources/get_all_event/get_all_event_state.dart';
import 'package:fpdart_riverpod/entities/event_entity.dart';
import 'package:fpdart_riverpod/services/storage_service.dart';
import 'package:mocktail/mocktail.dart';

class StorageServiceMock extends Mock implements StorageService {}

void main() {
  group('getAllEvent', () {
    test('should call "getAll" from StorageService one time', () async {
      final storageService = StorageServiceMock();
      await getAllEvent.run(storageService);

      verify(() => storageService.getAll).called(1);
    });

    test('should return QueryGetAllEventError when getAll throws', () async {
      final storageService = StorageServiceMock();
      when(() => storageService.getAll).thenThrow(Exception());

      final result = await getAllEvent.run(storageService);

      expect(result, isA<QueryGetAllEventError>());
    });

    test('should return SuccessGetAllEventState when the request is successful',
        () async {
      final storageService = StorageServiceMock();
      when(() => storageService.getAll).thenAnswer((_) async => []);

      final result = await getAllEvent.run(storageService);

      expect(result, isA<SuccessGetAllEventState>());
    });

    test(
        'should return the list returned by getAll when the request is successful',
        () async {
      final storageService = StorageServiceMock();

      final eventEntity = EventEntity(0, 'title', DateTime(2020));
      when(() => storageService.getAll).thenAnswer((_) async => [eventEntity]);

      final result = await getAllEvent.run(storageService);

      if (result
          case SuccessGetAllEventState(eventEntity: final eventEntityList)) {
        expect(eventEntityList, [eventEntity]);
      } else {
        fail("Not an instance of SuccessGetAllEventState");
      }
    });
  });
}
