part of 'edit_customer_bloc.dart';

abstract class EditCustomerEvent extends Equatable {
  const EditCustomerEvent();
}

class EditCustomerSaveEvent extends EditCustomerEvent {
  final CustomerInput customerInput;

  const EditCustomerSaveEvent(this.customerInput);

  @override
  List<Object?> get props => [customerInput];
}

class EditCustomerDeleteCustomerEvent extends EditCustomerEvent {
  final String customerId;

  const EditCustomerDeleteCustomerEvent(this.customerId);

  @override
  List<Object?> get props => [customerId];
}
