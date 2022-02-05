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

class EditCustomerLoadedFail extends EditCustomerState {
  @override
  List<Object> get props => [];
}
