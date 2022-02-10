import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:customer_care/common/service.dart';
import 'package:customer_care/features/authentication/user_session.dart';
import 'package:customer_care/features/customer/customer.dart';
import 'package:customer_care/features/user/user.dart';
import 'package:injectable/injectable.dart';

abstract class ICustomerService extends Service {
  ICustomerService(UserSession userSession) : super(userSession);

  Query<Customer> query([int limit = 15]);

  Query<Customer> startAfter(String customerId, [int limit = 15]);

  Future<void> insertOrReplace(Customer customer);

  Future<void> delete(String customerId);
}

@Singleton(as: ICustomerService)
class CustomerService extends ICustomerService {
  final CollectionReference<User> _customerRef;

  CustomerService(
    FirebaseFirestore firebaseFirestore,
    UserSession userSession,
  )   : _customerRef = firebaseFirestore
            .collection('users')
            .withConverter<User>(
                fromFirestore: (snapshot, _) => User.fromJson(snapshot.data()!),
                toFirestore: (user, _) => user.toJson()),
        super(userSession);

  @override
  Future<void> insertOrReplace(Customer customer) {
    return _customerRef
        .customerCollection(userId)
        .doc(customer.id)
        .set(customer);
  }

  @override
  Future<void> delete(String customerId) {
    return _customerRef.customerCollection(userId).doc(customerId).delete();
  }

  @override
  Query<Customer> query([int limit = 15]) {
    return _customerRef.customerCollection(userId).orderBy('id').limit(limit);
  }

  @override
  Query<Customer> startAfter(String customerId, [int limit = 15]) {
    return query(limit).startAfter([customerId]);
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
