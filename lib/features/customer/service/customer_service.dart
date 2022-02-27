import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:customer_care/common/service.dart';
import 'package:customer_care/features/customer/customer.dart';
import 'package:customer_care/features/file_remote_storage/file_remote_storage_service.dart';
import 'package:customer_care/features/file_remote_storage/file_remote_storage_task.dart';
import 'package:injectable/injectable.dart';

abstract class ICustomerService {
  Query<Customer> startAfter(String customerId, [int limit = 15]);

  Future<void> delete(String id);

  Future<void> insertOrReplace(Customer data);

  Future<void> update(Customer data);

  Query<Customer> query([int limit = 15]);

  Stream<FileRemoteStorageTask> uploadIdCard(String filename, Uint8List data);

  Future<String> getImageDownloadUrl(String filename);

  Future<Customer?> getCustomerById(String id);
}

@Singleton(as: ICustomerService)
class CustomerService extends CRUDService<Customer>
    with FileRemoteStorageService
    implements ICustomerService {
  CustomerService(
    FirebaseFirestore firebaseFirestore,
  ) : super(firebaseFirestore);

  @override
  Future<void> insertOrReplace(Customer data) {
    return collectionReference.doc(data.id).set(data);
  }

  @override
  Future<void> delete(String id) {
    return collectionReference.doc(id).delete();
  }

  @override
  Query<Customer> query([int limit = 15]) {
    return collectionReference.orderBy('id').limit(limit);
  }

  @override
  Query<Customer> startAfter(String customerId, [int limit = 15]) {
    return query(limit).startAfter([customerId]);
  }

  @override
  String get collection => "customers";

  @override
  Customer fromJson(Map<String, dynamic> json) {
    return Customer.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(Customer data) {
    return data.toJson();
  }

  @override
  Future<void> update(Customer data) {
    return collectionReference.doc(data.id).update(data.toJson());
  }

  @override
  Stream<FileRemoteStorageTask> uploadIdCard(String filename, Uint8List data) {
    return uploadImageData(filename, data);
  }

  @override
  Future<String> getImageDownloadUrl(String filename) {
    return getImageDownloadURL(filename);
  }

  @override
  Future<Customer?> getCustomerById(String id) {
    return findById(id);
  }
}
