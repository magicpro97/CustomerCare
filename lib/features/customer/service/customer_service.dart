import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:customer_care/features/customer/customer.dart';
import 'package:injectable/injectable.dart';

abstract class ICustomerService {
  Query<Customer> query(String userId, [int limit = 15]);

  Query<Customer> startAfter(String userId, String customerId,
      [int limit = 15]);

  Future<void> insertOrReplace(String userId, Customer customer);

  Future<void> delete(String userId, String customerId);
}

@Singleton(as: ICustomerService)
class CustomerService implements ICustomerService {
  final FirebaseFirestore _firebaseFirestore;
  final CollectionReference _customerRef;

  CustomerService(this._firebaseFirestore)
      : _customerRef = _firebaseFirestore.collection('users');

  @override
  Future<void> insertOrReplace(String userId, Customer customer) {
    return _customerRef
        .customerCollection(userId)
        .doc(customer.id)
        .set(customer);
  }

  @override
  Future<void> delete(String userId, String customerId) {
    return _customerRef.customerCollection(userId).doc(customerId).delete();
  }

  @override
  Query<Customer> query(String userId, [int limit = 15]) {
    return _customerRef.customerCollection(userId).orderBy('id').limit(limit);
  }

  @override
  Query<Customer> startAfter(String userId, String customerId,
      [int limit = 15]) {
    return query(userId).startAfter([customerId]);
  }
}

extension CollectionRefX on CollectionReference {
  CollectionReference<Customer> customerCollection(String userId) {
    return doc(userId).collection('customers').withConverter<Customer>(
          fromFirestore: (snapshot, _) => Customer.fromJson(snapshot.data()!),
          toFirestore: (customer, _) => customer.toJson(),
        );
  }
}
