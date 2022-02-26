import 'dart:async';
import 'dart:typed_data';

import 'package:customer_care/common/service.dart';
import 'package:customer_care/features/file_remote_storage/file_remote_storage_task.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';

mixin FileRemoteStorageService on AppService {
  final _firebaseStorage = GetIt.I<FirebaseStorage>();

  Stream<FileRemoteStorageTask> uploadImageData(
      String filename, Uint8List data) {
    return uploadData(filename, FileType.image, data);
  }

  Stream<FileRemoteStorageTask> uploadData(
    String filename,
    FileType fileType,
    Uint8List data,
  ) {
    final _reference = _firebaseStorage.ref().child('users').child(userId);

    final UploadTask uploadTask;

    switch (fileType) {
      case FileType.image:
        final _imageReference = _reference.child('images');
        uploadTask = _imageReference.child(filename).putData(data);
        break;
    }

    return uploadTask.snapshotEvents.transform(StreamTransformer.fromHandlers(
      handleData: (task, sink) {
        final progress = task.bytesTransferred / task.totalBytes;
        sink.add(FileRemoteStorageTask.processing(progress: progress));
        if (progress == 1) {
          sink.add(const FileRemoteStorageTask.success());
        }
      },
      handleError: (error, stackTrace, sink) {
        sink.addError(FileRemoteStorageTask.failure(
            code: error.toString(), message: stackTrace.toString()));
      },
    ));
  }

  Future<String> getImageDownloadURL(String filename) {
    return _firebaseStorage
        .ref()
        .child('users')
        .child(userId)
        .child("images")
        .child(filename)
        .getDownloadURL();
  }
}

enum FileType {
  image,
}
