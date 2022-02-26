part of 'upload_id_card_bloc.dart';

abstract class UploadIdCardState extends Equatable {
  const UploadIdCardState();
}

class UploadIdCardInitial extends UploadIdCardState {
  @override
  List<Object> get props => [];
}

class UploadIdCardUploading extends UploadIdCardState {
  final double progress;

  const UploadIdCardUploading(this.progress);

  @override
  List<Object> get props => [progress];
}

class UploadIdCardUploadedSuccess extends UploadIdCardState {
  final String filename;

  const UploadIdCardUploadedSuccess(this.filename);

  @override
  List<Object> get props => [filename];
}

class UploadIdCardUploadedFailure extends UploadIdCardState {
  const UploadIdCardUploadedFailure();

  @override
  List<Object> get props => [];
}

class UploadIdCardGetDownloadUrlSuccess extends UploadIdCardState {
  final String url;

  const UploadIdCardGetDownloadUrlSuccess(this.url);

  @override
  List<Object> get props => [url];
}
