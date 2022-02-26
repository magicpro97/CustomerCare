part of 'upload_id_card_bloc.dart';

abstract class UploadIdCardEvent extends Equatable {
  const UploadIdCardEvent();
}

class UploadIdCardUploadEvent extends UploadIdCardEvent {
  final XFile imageFile;
  final IdCardSide side;

  const UploadIdCardUploadEvent(this.imageFile, this.side);

  @override
  List<Object?> get props => [imageFile];
}

class UploadIdCardGetDownloadUrlEvent extends UploadIdCardEvent {
  final String filename;

  const UploadIdCardGetDownloadUrlEvent(this.filename);

  @override
  List<Object?> get props => [filename];
}
