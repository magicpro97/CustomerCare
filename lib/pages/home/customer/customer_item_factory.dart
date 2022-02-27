import 'package:customer_care/features/customer/customer.dart';
import 'package:customer_care/pages/home/customer/widgets/customer_item.dart';
import 'package:injectable/injectable.dart';

@injectable
class CustomerItemFactory {
  CustomerItem generateCustomerItem(Customer customer) {
    return CustomerItem(
      id: customer.id,
      name: customer.name,
      phone: customer.phone,
      tagColor: customer.tagColor,
    );
  }
}
