import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart_riverpod/entities/event_entity.dart';

part 'get_all_event_error.dart';

sealed class GetAllEventState {
  const GetAllEventState();
}

class SuccessGetAllEventState extends GetAllEventState {
  final IList<EventEntity> eventEntity;
  const SuccessGetAllEventState(this.eventEntity);
}
