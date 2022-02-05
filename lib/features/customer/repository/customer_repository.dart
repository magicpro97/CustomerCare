import 'package:customer_care/features/customer/service/customer_service.dart';
import 'package:injectable/injectable.dart';

import '../customer.dart';

abstract class ICustomerRepository {
  Future<List<Customer>> query(String userId, [int limit = 15]);

  Stream<List<Customer>> queryStream(String userId);

  Future<List<Customer>> startAfter(String userId, String customerId,
      [int limit = 15]);

  Future<void> add(String userId, Customer customer);

  Future<void> delete(String userId, String customerId);
}

@Singleton(as: ICustomerRepository)
class CustomerRepository implements ICustomerRepository {
  final ICustomerService _iCustomerService;

  CustomerRepository(this._iCustomerService);

  @override
  Future<List<Customer>> query(String userId, [int limit = 15]) {
    return _iCustomerService.query(userId, limit).get().then((snapshot) {
      return snapshot.docs.map((e) => e.data()).toList();
    });
  }

  @override
  Future<void> add(String userId, Customer customer) {
    return _iCustomerService.add(userId, customer);
  }

  @override
  Future<void> delete(String userId, String customerId) {
    return _iCustomerService.delete(userId, customerId);
  }

  @override
  Future<List<Customer>> startAfter(String userId, String customerId,
      [int limit = 15]) {
    return _iCustomerService
        .startAfter(userId, customerId, limit)
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
  }

  @override
  Stream<List<Customer>> queryStream(String userId) {
    return _iCustomerService
        .query(userId)
        .snapshots()
        .map((event) => event.docs.map((e) => e.data()).toList());
  }
}
