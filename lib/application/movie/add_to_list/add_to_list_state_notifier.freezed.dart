// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_to_list_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddToListStateTearOff {
  const _$AddToListStateTearOff();

  UnClickState unClick() {
    return const UnClickState();
  }

  ClickedState clicked(String? movieDocId) {
    return ClickedState(
      movieDocId,
    );
  }

  ToggleFailedState toggleFailed(String message) {
    return ToggleFailedState(
      message,
    );
  }
}

/// @nodoc
const $AddToListState = _$AddToListStateTearOff();

/// @nodoc
mixin _$AddToListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unClick,
    required TResult Function(String? movieDocId) clicked,
    required TResult Function(String message) toggleFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unClick,
    TResult Function(String? movieDocId)? clicked,
    TResult Function(String message)? toggleFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnClickState value) unClick,
    required TResult Function(ClickedState value) clicked,
    required TResult Function(ToggleFailedState value) toggleFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnClickState value)? unClick,
    TResult Function(ClickedState value)? clicked,
    TResult Function(ToggleFailedState value)? toggleFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToListStateCopyWith<$Res> {
  factory $AddToListStateCopyWith(
          AddToListState value, $Res Function(AddToListState) then) =
      _$AddToListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddToListStateCopyWithImpl<$Res>
    implements $AddToListStateCopyWith<$Res> {
  _$AddToListStateCopyWithImpl(this._value, this._then);

  final AddToListState _value;
  // ignore: unused_field
  final $Res Function(AddToListState) _then;
}

/// @nodoc
abstract class $UnClickStateCopyWith<$Res> {
  factory $UnClickStateCopyWith(
          UnClickState value, $Res Function(UnClickState) then) =
      _$UnClickStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnClickStateCopyWithImpl<$Res>
    extends _$AddToListStateCopyWithImpl<$Res>
    implements $UnClickStateCopyWith<$Res> {
  _$UnClickStateCopyWithImpl(
      UnClickState _value, $Res Function(UnClickState) _then)
      : super(_value, (v) => _then(v as UnClickState));

  @override
  UnClickState get _value => super._value as UnClickState;
}

/// @nodoc

class _$UnClickState implements UnClickState {
  const _$UnClickState();

  @override
  String toString() {
    return 'AddToListState.unClick()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnClickState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unClick,
    required TResult Function(String? movieDocId) clicked,
    required TResult Function(String message) toggleFailed,
  }) {
    return unClick();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unClick,
    TResult Function(String? movieDocId)? clicked,
    TResult Function(String message)? toggleFailed,
    required TResult orElse(),
  }) {
    if (unClick != null) {
      return unClick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnClickState value) unClick,
    required TResult Function(ClickedState value) clicked,
    required TResult Function(ToggleFailedState value) toggleFailed,
  }) {
    return unClick(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnClickState value)? unClick,
    TResult Function(ClickedState value)? clicked,
    TResult Function(ToggleFailedState value)? toggleFailed,
    required TResult orElse(),
  }) {
    if (unClick != null) {
      return unClick(this);
    }
    return orElse();
  }
}

abstract class UnClickState implements AddToListState {
  const factory UnClickState() = _$UnClickState;
}

/// @nodoc
abstract class $ClickedStateCopyWith<$Res> {
  factory $ClickedStateCopyWith(
          ClickedState value, $Res Function(ClickedState) then) =
      _$ClickedStateCopyWithImpl<$Res>;
  $Res call({String? movieDocId});
}

/// @nodoc
class _$ClickedStateCopyWithImpl<$Res>
    extends _$AddToListStateCopyWithImpl<$Res>
    implements $ClickedStateCopyWith<$Res> {
  _$ClickedStateCopyWithImpl(
      ClickedState _value, $Res Function(ClickedState) _then)
      : super(_value, (v) => _then(v as ClickedState));

  @override
  ClickedState get _value => super._value as ClickedState;

  @override
  $Res call({
    Object? movieDocId = freezed,
  }) {
    return _then(ClickedState(
      movieDocId == freezed
          ? _value.movieDocId
          : movieDocId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ClickedState implements ClickedState {
  const _$ClickedState(this.movieDocId);

  @override
  final String? movieDocId;

  @override
  String toString() {
    return 'AddToListState.clicked(movieDocId: $movieDocId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ClickedState &&
            (identical(other.movieDocId, movieDocId) ||
                const DeepCollectionEquality()
                    .equals(other.movieDocId, movieDocId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieDocId);

  @JsonKey(ignore: true)
  @override
  $ClickedStateCopyWith<ClickedState> get copyWith =>
      _$ClickedStateCopyWithImpl<ClickedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unClick,
    required TResult Function(String? movieDocId) clicked,
    required TResult Function(String message) toggleFailed,
  }) {
    return clicked(movieDocId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unClick,
    TResult Function(String? movieDocId)? clicked,
    TResult Function(String message)? toggleFailed,
    required TResult orElse(),
  }) {
    if (clicked != null) {
      return clicked(movieDocId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnClickState value) unClick,
    required TResult Function(ClickedState value) clicked,
    required TResult Function(ToggleFailedState value) toggleFailed,
  }) {
    return clicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnClickState value)? unClick,
    TResult Function(ClickedState value)? clicked,
    TResult Function(ToggleFailedState value)? toggleFailed,
    required TResult orElse(),
  }) {
    if (clicked != null) {
      return clicked(this);
    }
    return orElse();
  }
}

abstract class ClickedState implements AddToListState {
  const factory ClickedState(String? movieDocId) = _$ClickedState;

  String? get movieDocId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClickedStateCopyWith<ClickedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToggleFailedStateCopyWith<$Res> {
  factory $ToggleFailedStateCopyWith(
          ToggleFailedState value, $Res Function(ToggleFailedState) then) =
      _$ToggleFailedStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ToggleFailedStateCopyWithImpl<$Res>
    extends _$AddToListStateCopyWithImpl<$Res>
    implements $ToggleFailedStateCopyWith<$Res> {
  _$ToggleFailedStateCopyWithImpl(
      ToggleFailedState _value, $Res Function(ToggleFailedState) _then)
      : super(_value, (v) => _then(v as ToggleFailedState));

  @override
  ToggleFailedState get _value => super._value as ToggleFailedState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ToggleFailedState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToggleFailedState implements ToggleFailedState {
  const _$ToggleFailedState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AddToListState.toggleFailed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ToggleFailedState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ToggleFailedStateCopyWith<ToggleFailedState> get copyWith =>
      _$ToggleFailedStateCopyWithImpl<ToggleFailedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unClick,
    required TResult Function(String? movieDocId) clicked,
    required TResult Function(String message) toggleFailed,
  }) {
    return toggleFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unClick,
    TResult Function(String? movieDocId)? clicked,
    TResult Function(String message)? toggleFailed,
    required TResult orElse(),
  }) {
    if (toggleFailed != null) {
      return toggleFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnClickState value) unClick,
    required TResult Function(ClickedState value) clicked,
    required TResult Function(ToggleFailedState value) toggleFailed,
  }) {
    return toggleFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnClickState value)? unClick,
    TResult Function(ClickedState value)? clicked,
    TResult Function(ToggleFailedState value)? toggleFailed,
    required TResult orElse(),
  }) {
    if (toggleFailed != null) {
      return toggleFailed(this);
    }
    return orElse();
  }
}

abstract class ToggleFailedState implements AddToListState {
  const factory ToggleFailedState(String message) = _$ToggleFailedState;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToggleFailedStateCopyWith<ToggleFailedState> get copyWith =>
      throw _privateConstructorUsedError;
}
