import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:customer_care/features/customer/customer.dart';
import 'package:customer_care/features/customer/repository/customer_repository.dart';
import 'package:equatable/equatable.dart';

part 'home_view_event.dart';

part 'home_view_state.dart';

class HomeViewBloc extends Bloc<HomeViewEvent, HomeViewState> {
  final ICustomerRepository _customerRepository;

  HomeViewBloc(this._customerRepository) : super(HomeViewInitial()) {
    on<HomeViewEvent>((event, emit) {});
  }

  Stream<List<Customer>> remindCustomer$(int dayAfter) =>
      _customerRepository.remindContactStream().transform(
          StreamTransformer<List<Customer>, List<Customer>>.fromHandlers(
              handleData: (customers, sink) {
        final today = DateTime.now();
        sink.add(customers
            .where((customer) =>
                today.difference(customer.lastContactDate).inDays > dayAfter)
            .toList());
      }));
}
