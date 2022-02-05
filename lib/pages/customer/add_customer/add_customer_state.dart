part of 'add_customer_bloc.dart';

abstract class AddCustomerState extends Equatable {
  const AddCustomerState();
}

class AddCustomerInitial extends AddCustomerState {
  @override
  List<Object> get props => [];
}

class AddCustomerLoading extends AddCustomerState {
  @override
  List<Object> get props => [];
}

class AddCustomerLoadedSuccess extends AddCustomerState {
  @override
  List<Object> get props => [];
}

class AddCustomerLoadedFail extends AddCustomerState {
  @override
  List<Object> get props => [];
}
