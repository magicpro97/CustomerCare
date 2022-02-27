import 'dart:typed_data';

import 'package:customer_care/features/customer/service/customer_service.dart';
import 'package:customer_care/features/file_remote_storage/file_remote_storage_task.dart';
import 'package:injectable/injectable.dart';

import '../customer.dart';

abstract class ICustomerRepository {
  Future<List<Customer>> query([int limit = 15]);

  Stream<List<Customer>> queryStream();

  Stream<List<Customer>> remindContact$();

  Future<List<Customer>> startAfter(String customerId, [int limit = 15]);

  Future<Customer?> getCustomerById(String id);

  Future<void> add(Customer customer);

  Future<void> delete(String customerId);

  Future<void> update(Customer customer);

  Stream<FileRemoteStorageTask> uploadIdCard(String filename, Uint8List data);

  Future<String> getImageDownloadUrl(String filename);
}

@Singleton(as: ICustomerRepository)
class CustomerRepository implements ICustomerRepository {
  final ICustomerService _customerService;

  CustomerRepository(this._customerService);

  @override
  Future<List<Customer>> query([int limit = 15]) {
    return _customerService.query(limit).get().then((snapshot) {
      return snapshot.docs.map((e) => e.data()).toList();
    });
  }

  @override
  Future<void> add(Customer customer) {
    return _customerService.insertOrReplace(customer);
  }

  @override
  Future<void> delete(String customerId) {
    return _customerService.delete(customerId);
  }

  @override
  Future<List<Customer>> startAfter(String customerId, [int limit = 15]) {
    return _customerService
        .startAfter(customerId, limit)
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
  }

  @override
  Stream<List<Customer>> queryStream() {
    return _customerService
        .query()
        .snapshots()
        .map((event) => event.docs.map((e) => e.data()).toList());
  }

  @override
  Future<void> update(Customer customer) {
    return _customerService.insertOrReplace(customer);
  }

  @override
  Stream<List<Customer>> remindContact$() {
    return _customerService
        .query()
        .orderBy('last_contact_date')
        .snapshots()
        .map((event) => event.docs.map((e) => e.data()).toList());
  }

  @override
  Stream<FileRemoteStorageTask> uploadIdCard(String filename, Uint8List data) {
    return _customerService.uploadIdCard(filename, data);
  }

  @override
  Future<String> getImageDownloadUrl(String filename) {
    return _customerService.getImageDownloadUrl(filename);
  }

  @override
  Future<Customer?> getCustomerById(String id) {
    return _customerService.getCustomerById(id);
  }
}
