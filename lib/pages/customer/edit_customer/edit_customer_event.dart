part of 'edit_customer_bloc.dart';

abstract class EditCustomerEvent extends Equatable {
  const EditCustomerEvent();
}

class EditCustomerFetchCustomerInfoEvent extends EditCustomerEvent {
  final String customerId;

  const EditCustomerFetchCustomerInfoEvent(this.customerId);

  @override
  List<Object?> get props => [customerId];
}

class EditCustomerSaveCustomerInfoEvent extends EditCustomerEvent {
  final CustomerInput customerInput;

  const EditCustomerSaveCustomerInfoEvent(this.customerInput);

  @override
  List<Object?> get props => [customerInput];
}

class EditCustomerDeleteCustomerInfoEvent extends EditCustomerEvent {
  final String customerId;

  const EditCustomerDeleteCustomerInfoEvent(this.customerId);

  @override
  List<Object?> get props => [customerId];
}
