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
      email: customerInput.email,
      idCardFrontSideUrl: customerInput.idCardFrontSideUrl,
      idCardBackSideUrl: customerInput.idCardBackSideUrl,
      tagColor: customerInput.tagColor,
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
      email: customerInput.email,
      idCardFrontSideUrl: customerInput.idCardFrontSideUrl,
      idCardBackSideUrl: customerInput.idCardBackSideUrl,
      tagColor: customerInput.tagColor,
    );
  }

  CustomerInput generateCustomerInput(Customer customer) {
    return CustomerInput(
      id: customer.id,
      fullname: customer.name,
      dateOfBirth: customer.dateOfBirth,
      phone: customer.phone,
      lastContactDate: customer.lastContactDate,
      hobbies: customer.hobbies,
      createdAt: customer.createdAt,
      updatedAt: customer.updatedAt,
      email: customer.email,
      idCardBackSideUrl: customer.idCardBackSideUrl,
      idCardFrontSideUrl: customer.idCardFrontSideUrl,
      tagColor: customer.tagColor,
    );
  }
}
