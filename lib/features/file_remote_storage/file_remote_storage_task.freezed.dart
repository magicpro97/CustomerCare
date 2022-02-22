// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'file_remote_storage_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FileRemoteStorageTaskTearOff {
  const _$FileRemoteStorageTaskTearOff();

  _ProcessingTask processing({required double progress}) {
    return _ProcessingTask(
      progress: progress,
    );
  }

  _SuccessTask success() {
    return const _SuccessTask();
  }

  _FailureTask failure({required String code, required String message}) {
    return _FailureTask(
      code: code,
      message: message,
    );
  }
}

/// @nodoc
const $FileRemoteStorageTask = _$FileRemoteStorageTaskTearOff();

/// @nodoc
mixin _$FileRemoteStorageTask {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress) processing,
    required TResult Function() success,
    required TResult Function(String code, String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double progress)? processing,
    TResult Function()? success,
    TResult Function(String code, String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress)? processing,
    TResult Function()? success,
    TResult Function(String code, String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProcessingTask value) processing,
    required TResult Function(_SuccessTask value) success,
    required TResult Function(_FailureTask value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProcessingTask value)? processing,
    TResult Function(_SuccessTask value)? success,
    TResult Function(_FailureTask value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProcessingTask value)? processing,
    TResult Function(_SuccessTask value)? success,
    TResult Function(_FailureTask value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileRemoteStorageTaskCopyWith<$Res> {
  factory $FileRemoteStorageTaskCopyWith(FileRemoteStorageTask value,
          $Res Function(FileRemoteStorageTask) then) =
      _$FileRemoteStorageTaskCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileRemoteStorageTaskCopyWithImpl<$Res>
    implements $FileRemoteStorageTaskCopyWith<$Res> {
  _$FileRemoteStorageTaskCopyWithImpl(this._value, this._then);

  final FileRemoteStorageTask _value;
  // ignore: unused_field
  final $Res Function(FileRemoteStorageTask) _then;
}

/// @nodoc
abstract class _$ProcessingTaskCopyWith<$Res> {
  factory _$ProcessingTaskCopyWith(
          _ProcessingTask value, $Res Function(_ProcessingTask) then) =
      __$ProcessingTaskCopyWithImpl<$Res>;
  $Res call({double progress});
}

/// @nodoc
class __$ProcessingTaskCopyWithImpl<$Res>
    extends _$FileRemoteStorageTaskCopyWithImpl<$Res>
    implements _$ProcessingTaskCopyWith<$Res> {
  __$ProcessingTaskCopyWithImpl(
      _ProcessingTask _value, $Res Function(_ProcessingTask) _then)
      : super(_value, (v) => _then(v as _ProcessingTask));

  @override
  _ProcessingTask get _value => super._value as _ProcessingTask;

  @override
  $Res call({
    Object? progress = freezed,
  }) {
    return _then(_ProcessingTask(
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ProcessingTask implements _ProcessingTask {
  _$_ProcessingTask({required this.progress});

  @override
  final double progress;

  @override
  String toString() {
    return 'FileRemoteStorageTask.processing(progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProcessingTask &&
            const DeepCollectionEquality().equals(other.progress, progress));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(progress));

  @JsonKey(ignore: true)
  @override
  _$ProcessingTaskCopyWith<_ProcessingTask> get copyWith =>
      __$ProcessingTaskCopyWithImpl<_ProcessingTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress) processing,
    required TResult Function() success,
    required TResult Function(String code, String message) failure,
  }) {
    return processing(progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double progress)? processing,
    TResult Function()? success,
    TResult Function(String code, String message)? failure,
  }) {
    return processing?.call(progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress)? processing,
    TResult Function()? success,
    TResult Function(String code, String message)? failure,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProcessingTask value) processing,
    required TResult Function(_SuccessTask value) success,
    required TResult Function(_FailureTask value) failure,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProcessingTask value)? processing,
    TResult Function(_SuccessTask value)? success,
    TResult Function(_FailureTask value)? failure,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProcessingTask value)? processing,
    TResult Function(_SuccessTask value)? success,
    TResult Function(_FailureTask value)? failure,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _ProcessingTask implements FileRemoteStorageTask {
  factory _ProcessingTask({required double progress}) = _$_ProcessingTask;

  double get progress;
  @JsonKey(ignore: true)
  _$ProcessingTaskCopyWith<_ProcessingTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SuccessTaskCopyWith<$Res> {
  factory _$SuccessTaskCopyWith(
          _SuccessTask value, $Res Function(_SuccessTask) then) =
      __$SuccessTaskCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessTaskCopyWithImpl<$Res>
    extends _$FileRemoteStorageTaskCopyWithImpl<$Res>
    implements _$SuccessTaskCopyWith<$Res> {
  __$SuccessTaskCopyWithImpl(
      _SuccessTask _value, $Res Function(_SuccessTask) _then)
      : super(_value, (v) => _then(v as _SuccessTask));

  @override
  _SuccessTask get _value => super._value as _SuccessTask;
}

/// @nodoc

class _$_SuccessTask implements _SuccessTask {
  const _$_SuccessTask();

  @override
  String toString() {
    return 'FileRemoteStorageTask.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SuccessTask);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress) processing,
    required TResult Function() success,
    required TResult Function(String code, String message) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double progress)? processing,
    TResult Function()? success,
    TResult Function(String code, String message)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress)? processing,
    TResult Function()? success,
    TResult Function(String code, String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProcessingTask value) processing,
    required TResult Function(_SuccessTask value) success,
    required TResult Function(_FailureTask value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProcessingTask value)? processing,
    TResult Function(_SuccessTask value)? success,
    TResult Function(_FailureTask value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProcessingTask value)? processing,
    TResult Function(_SuccessTask value)? success,
    TResult Function(_FailureTask value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessTask implements FileRemoteStorageTask {
  const factory _SuccessTask() = _$_SuccessTask;
}

/// @nodoc
abstract class _$FailureTaskCopyWith<$Res> {
  factory _$FailureTaskCopyWith(
          _FailureTask value, $Res Function(_FailureTask) then) =
      __$FailureTaskCopyWithImpl<$Res>;
  $Res call({String code, String message});
}

/// @nodoc
class __$FailureTaskCopyWithImpl<$Res>
    extends _$FileRemoteStorageTaskCopyWithImpl<$Res>
    implements _$FailureTaskCopyWith<$Res> {
  __$FailureTaskCopyWithImpl(
      _FailureTask _value, $Res Function(_FailureTask) _then)
      : super(_value, (v) => _then(v as _FailureTask));

  @override
  _FailureTask get _value => super._value as _FailureTask;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_FailureTask(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FailureTask implements _FailureTask {
  _$_FailureTask({required this.code, required this.message});

  @override
  final String code;
  @override
  final String message;

  @override
  String toString() {
    return 'FileRemoteStorageTask.failure(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FailureTask &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$FailureTaskCopyWith<_FailureTask> get copyWith =>
      __$FailureTaskCopyWithImpl<_FailureTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double progress) processing,
    required TResult Function() success,
    required TResult Function(String code, String message) failure,
  }) {
    return failure(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double progress)? processing,
    TResult Function()? success,
    TResult Function(String code, String message)? failure,
  }) {
    return failure?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double progress)? processing,
    TResult Function()? success,
    TResult Function(String code, String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProcessingTask value) processing,
    required TResult Function(_SuccessTask value) success,
    required TResult Function(_FailureTask value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProcessingTask value)? processing,
    TResult Function(_SuccessTask value)? success,
    TResult Function(_FailureTask value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProcessingTask value)? processing,
    TResult Function(_SuccessTask value)? success,
    TResult Function(_FailureTask value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureTask implements FileRemoteStorageTask {
  factory _FailureTask({required String code, required String message}) =
      _$_FailureTask;

  String get code;
  String get message;
  @JsonKey(ignore: true)
  _$FailureTaskCopyWith<_FailureTask> get copyWith =>
      throw _privateConstructorUsedError;
}
