import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:customer_care/features/customer/customer.dart';
import 'package:customer_care/features/customer/repository/customer_repository.dart';
import 'package:customer_care/pages/home/home/customer_contact_factory.dart';
import 'package:customer_care/pages/home/home/widgets/customer_contact_item.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'home_view_event.dart';

part 'home_view_state.dart';

@injectable
class HomeViewBloc extends Bloc<HomeViewEvent, HomeViewState> {
  final ICustomerRepository _customerRepository;
  final CustomerContactFactory _customerContactFactory;

  HomeViewBloc(
    this._customerRepository,
    this._customerContactFactory,
  ) : super(HomeViewInitial()) {
    on<HomeViewEvent>((event, emit) {});
  }

  Stream<List<CustomerContactItem>> remindCustomer$(int dayAfter) =>
      _customerRepository.remindContactStream().transform(
          StreamTransformer<List<Customer>, List<Customer>>.fromHandlers(
              handleData: (customers, sink) {
        final today = DateTime.now();
        sink.add(customers
            .where((customer) =>
                today.difference(customer.lastContactDate).inDays > dayAfter)
            .toList());
      })).map((customers) => customers
          .map((customer) =>
              _customerContactFactory.generateCustomerContactItem(customer))
          .toList());
}
