part of 'add_to_list_state_notifier.dart';

@freezed
abstract class AddToListState with _$AddToListState {
  const factory AddToListState.unClick() = UnClickState;

  const factory AddToListState.clicked(String? movieDocId) = ClickedState;

  const factory AddToListState.toggleFailed(String message) = ToggleFailedState;
}
