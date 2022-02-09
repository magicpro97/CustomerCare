import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:customer_care/features/customer/customer.dart';
import 'package:customer_care/features/customer/repository/customer_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'customer_view_event.dart';

part 'customer_view_state.dart';

@injectable
class CustomerViewBloc extends Bloc<CustomerViewEvent, CustomerViewState> {
  final ICustomerRepository _customerRepository;

  CustomerViewBloc(this._customerRepository) : super(CustomerViewInitial()) {
    on<CustomerViewEvent>((event, emit) {});
  }

  Stream<List<Customer>> get customer$ => _customerRepository.queryStream();
}
