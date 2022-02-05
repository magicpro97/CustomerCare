part of 'edit_customer_bloc.dart';

abstract class EditCustomerEvent extends Equatable {
  const EditCustomerEvent();
}

class EditCustomerSaveEvent extends EditCustomerEvent {
  final Customer customer;

  const EditCustomerSaveEvent(this.customer);

  @override
  List<Object?> get props => [customer];
}

class EditCustomerRemoveCustomerEvent extends EditCustomerEvent {
  final String customerId;

  const EditCustomerRemoveCustomerEvent(this.customerId);

  @override
  List<Object?> get props => [customerId];
}
