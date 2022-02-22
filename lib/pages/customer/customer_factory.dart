import 'package:customer_care/features/customer/customer.dart';
import 'package:customer_care/pages/customer/widgets/customer_item_page/customer_input.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

@injectable
class CustomerFactory {
  Customer generateCustomer(CustomerInput customerInput) {
    return Customer(
      id: const Uuid().v1(),
      name: customerInput.fullname,
      phone: customerInput.phone,
      dateOfBirth: customerInput.dateOfBirth,
      lastContactDate: customerInput.lastContactDate,
      hobbies: customerInput.hobbies,
      updatedAt: DateTime.now(),
      createdAt: DateTime.now(),
    );
  }

  Customer updateCustomer(CustomerInput customerInput) {
    return Customer(
      id: customerInput.id!,
      name: customerInput.fullname,
      phone: customerInput.phone,
      dateOfBirth: customerInput.dateOfBirth,
      lastContactDate: customerInput.lastContactDate,
      hobbies: customerInput.hobbies,
      updatedAt: DateTime.now(),
      createdAt: customerInput.createdAt!,
    );
  }

  CustomerInput generateCustomerInput(Customer customer) {
    return CustomerInput(
      fullname: customer.name,
      dateOfBirth: customer.dateOfBirth,
      phone: customer.phone,
      lastContactDate: customer.lastContactDate,
      hobbies: customer.hobbies,
      createdAt: customer.createdAt,
      updatedAt: customer.updatedAt,
    );
  }
}