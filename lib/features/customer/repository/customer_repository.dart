import 'package:customer_care/features/customer/service/customer_service.dart';
import 'package:injectable/injectable.dart';

import '../customer.dart';

abstract class ICustomerRepository {
  Future<List<Customer>> query([int limit = 15]);

  Stream<List<Customer>> queryStream();

  Future<List<Customer>> startAfter(String customerId, [int limit = 15]);

  Future<void> add(Customer customer);

  Future<void> delete(String customerId);

  Future<void> update(Customer customer);
}

@Singleton(as: ICustomerRepository)
class CustomerRepository implements ICustomerRepository {
  final ICustomerService _iCustomerService;

  CustomerRepository(this._iCustomerService);

  @override
  Future<List<Customer>> query([int limit = 15]) {
    return _iCustomerService.query(limit).get().then((snapshot) {
      return snapshot.docs.map((e) => e.data()).toList();
    });
  }

  @override
  Future<void> add(Customer customer) {
    return _iCustomerService.insertOrReplace(customer);
  }

  @override
  Future<void> delete(String customerId) {
    return _iCustomerService.delete(customerId);
  }

  @override
  Future<List<Customer>> startAfter(String customerId, [int limit = 15]) {
    return _iCustomerService
        .startAfter(customerId, limit)
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
  }

  @override
  Stream<List<Customer>> queryStream() {
    return _iCustomerService
        .query()
        .snapshots()
        .map((event) => event.docs.map((e) => e.data()).toList());
  }

  @override
  Future<void> update(Customer customer) {
    return _iCustomerService.insertOrReplace(customer);
  }
}
