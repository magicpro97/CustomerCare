part of 'edit_customer_bloc.dart';

abstract class EditCustomerState extends Equatable {
  const EditCustomerState();
}

class EditCustomerInitial extends EditCustomerState {
  @override
  List<Object> get props => [];
}

class EditCustomerLoading extends EditCustomerState {
  @override
  List<Object> get props => [];
}

class EditCustomerLoadedSuccess extends EditCustomerState {
  @override
  List<Object> get props => [];
}

class EditCustomerLoadedFailure extends EditCustomerState {
  @override
  List<Object> get props => [];
}

class EditCustomerFetchedSuccess extends EditCustomerState {
  final CustomerInput customerInput;

  const EditCustomerFetchedSuccess(this.customerInput);

  @override
  List<Object> get props => [customerInput];
}

class EditCustomerFetchedFailure extends EditCustomerState {
  @override
  List<Object> get props => [];
}
