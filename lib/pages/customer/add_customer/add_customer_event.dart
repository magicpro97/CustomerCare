part of 'add_customer_bloc.dart';

abstract class AddCustomerEvent extends Equatable {
  const AddCustomerEvent();
}

class AddCustomerCreateEvent extends AddCustomerEvent {
  final Customer customer;

  const AddCustomerCreateEvent(this.customer);

  @override
  List<Object?> get props => [customer];
}
