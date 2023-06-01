import 'package:fpdart_riverpod/entities/event_entity.dart';

part 'get_all_event_error.dart';

sealed class GetAllEventState {
  const GetAllEventState();
}

class SuccessGetAllEventState extends GetAllEventState {
  final List<EventEntity> eventEntity;
  const SuccessGetAllEventState(this.eventEntity);
}
