import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'notification_activity_state.dart';
part 'notification_activity_cubit.freezed.dart';

class NotificationActivityCubit
    extends HydratedCubit<NotificationActivityState> {
  NotificationActivityCubit() : super(NotificationActivityState.initial());

  @override
  NotificationActivityState? fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic>? toJson(NotificationActivityState state) {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
