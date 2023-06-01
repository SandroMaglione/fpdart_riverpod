import 'package:flutter/material.dart';
import 'package:fpdart_riverpod/datasources/get_all_event/get_all_event_state.dart';
import 'package:fpdart_riverpod/providers/event_list_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventList = ref.watch(eventListProvider);
    return SafeArea(
      child: Scaffold(
        body: eventList.map(
          loading: (_) => const Text('Loading...'),
          error: (error) => Text("Error: $error"),
          data: (list) => switch (list.value) {
            QueryGetAllEventError() => const Text("Empty"),
            SuccessGetAllEventState(eventEntity: final eventEntity) => Column(
                children: [
                  Text('${eventEntity.length} length'),
                  ...eventEntity
                      .map(
                        (eventModel) => Card(
                          child: Text(eventModel.title),
                        ),
                      )
                      .toList()
                ],
              )
          },
        ),
      ),
    );
  }
}
