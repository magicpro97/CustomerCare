import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_remote_storage_task.freezed.dart';

@freezed
class FileRemoteStorageTask with _$FileRemoteStorageTask {
  factory FileRemoteStorageTask.processing({
    required double progress,
  }) = _ProcessingTask;

  const factory FileRemoteStorageTask.success() = _SuccessTask;

  factory FileRemoteStorageTask.failure({
    required String code,
    required String message,
  }) = _FailureTask;
}
