import 'package:customer_care/features/customer/customer.dart';
import 'package:customer_care/pages/home/home/widgets/customer_contact_item.dart';
import 'package:injectable/injectable.dart';

@injectable
class CustomerContactFactory {
  CustomerContactItem generateCustomerContactItem(Customer customer) {
    return CustomerContactItem(
      name: customer.name,
      phone: customer.phone,
      lastContactDate: customer.lastContactDate,
      tagColor: customer.tagColor,
    );
  }
}
