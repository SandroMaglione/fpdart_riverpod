import 'package:fpdart/fpdart.dart';
import 'package:fpdart_riverpod/datasources/get_all_event/get_all_event_state.dart';
import 'package:fpdart_riverpod/services/storage_service.dart';

final getAllEvent = ReaderTask<StorageService, GetAllEventState>.Do(
  (_) async {
    final executeQuery = await _(
      ReaderTask(
        (storageService) async => TaskEither.tryCatch(
          () => storageService.getAll,
          QueryGetAllEventError.new,
        ),
      ),
    );

    return _(
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

final getAllEventChain = ReaderTask(
  (StorageService storageService) => TaskEither.tryCatch(
    () => storageService.getAll,
    QueryGetAllEventError.new,
  )
      .match(
        identity,
        SuccessGetAllEventState.new,
      )
      .run(),
);
