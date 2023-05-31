part of 'get_all_event_state.dart';

sealed class GetAllEventError extends GetAllEventState {
  const GetAllEventError();
}

class QueryGetAllEventError extends GetAllEventError {
  final Object object;
  final StackTrace stackTrace;
  const QueryGetAllEventError(this.object, this.stackTrace);
}
