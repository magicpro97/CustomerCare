import 'package:customer_care/features/customer/service/customer_service.dart';
import 'package:injectable/injectable.dart';

import '../customer.dart';

abstract class ICustomerRepository {
  Future<List<Customer>> query([int limit = 15]);

  Stream<List<Customer>> queryStream();

  Stream<List<Customer>> remindContactStream();

  Future<List<Customer>> startAfter(String customerId, [int limit = 15]);

  Future<void> add(Customer customer);

  Future<void> delete(String customerId);

  Future<void> update(Customer customer);
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
  Stream<List<Customer>> remindContactStream() {
    return _customerService
        .query()
        .orderBy('last_date_contact')
        .where('last_date_contact', isLessThan: DateTime.now())
        .snapshots()
        .map((event) => event.docs.map((e) => e.data()).toList());
  }
}
