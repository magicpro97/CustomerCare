part of 'customer_view_bloc.dart';

abstract class CustomerViewState extends Equatable {
  const CustomerViewState();
}

class CustomerViewInitial extends CustomerViewState {
  @override
  List<Object> get props => [];
}
