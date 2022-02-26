import 'dart:async';

import 'package:bloc/bloc.dart';
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

  Stream<List<CustomerContactItem>> remindCustomerItem$(int dayAfter) =>
      _customerRepository.remindContact$().map((customers) {
        final today = DateTime.now();
        final reminderCustomers = customers.where((customer) {
          final diffDays = today.difference(customer.lastContactDate).inDays;
          return diffDays > dayAfter;
        }).toList();
        return reminderCustomers;
      }).map((customers) => customers
          .map(_customerContactFactory.generateCustomerContactItem)
          .toList());
}
