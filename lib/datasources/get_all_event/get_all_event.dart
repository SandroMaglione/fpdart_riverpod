import 'package:fpdart/fpdart.dart';
import 'package:fpdart_riverpod/datasources/get_all_event/get_all_event_state.dart';
import 'package:fpdart_riverpod/services/storage_service.dart';

final getAllEvent = ReaderTask<StorageService, GetAllEventState>.Do(
  ($) async {
    final executeQuery = await $(
      ReaderTask(
        (repository) async => TaskEither.tryCatch(
          () => repository.getAll,
          QueryGetAllEventError.new,
        ),
      ),
    );

    return $(
      ReaderTask(
        (_) => executeQuery
            .match(
              identity,
              SuccessGetAllEventState.new,
            )
            .run(),
      ),
    );
  },
);
