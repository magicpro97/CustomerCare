import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:customer_care/features/customer/repository/customer_repository.dart';
import 'package:customer_care/features/file_remote_storage/file_remote_storage_task.dart';
import 'package:customer_care/pages/customer/upload_id_card/id_card_side.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'upload_id_card_event.dart';

part 'upload_id_card_state.dart';

@injectable
class UploadIdCardBloc extends Bloc<UploadIdCardEvent, UploadIdCardState> {
  final ICustomerRepository _customerRepository;

  static const _idCardFrontSide = 'ID_CARD_FRONT_SIDE';
  static const _idCardBackSide = 'ID_CARD_BACK_SIDE';

  UploadIdCardBloc(this._customerRepository) : super(UploadIdCardInitial()) {
    on<UploadIdCardUploadEvent>(_upload);

    on<UploadIdCardGetDownloadUrlEvent>(_getImageUrl);
  }

  Future<void> _getImageUrl(UploadIdCardGetDownloadUrlEvent event,
      Emitter<UploadIdCardState> emit) async {
    final url = await _customerRepository.getImageDownloadUrl(event.filename);
    emit(UploadIdCardGetDownloadUrlSuccess(url));
  }

  Future<void> _upload(
      UploadIdCardUploadEvent event, Emitter<UploadIdCardState> emit) async {
    final file = event.imageFile;
    final side = event.side;
    final name = side == IdCardSide.front ? _idCardFrontSide : _idCardBackSide;
    final filename = '$name.${file.name.split('.')[1]}';
    final data = await file.readAsBytes();
    await emit.forEach(_customerRepository.uploadIdCard(filename, data),
        onData: (FileRemoteStorageTask task) => task.map(
              processing: (task) => UploadIdCardUploading(task.progress),
              success: (task) => UploadIdCardUploadedSuccess(filename),
              failure: (task) => const UploadIdCardUploadedFailure(),
            ));
  }
}
