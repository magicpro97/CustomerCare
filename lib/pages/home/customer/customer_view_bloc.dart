import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:customer_care/features/authentication/user_session.dart';
import 'package:customer_care/features/customer/customer.dart';
import 'package:customer_care/features/customer/repository/customer_repository.dart';
import 'package:customer_care/features/notification/app_notification.dart';
import 'package:customer_care/features/notification/cache_notification.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

part 'customer_view_event.dart';

part 'customer_view_state.dart';

@injectable
class CustomerViewBloc extends Bloc<CustomerViewEvent, CustomerViewState> {
  final ICustomerRepository _customerRepository;
  final CacheNotification _cacheNotification;

  final _user = GetIt.I<UserSession>().user!;

  CustomerViewBloc(
    this._customerRepository,
    this._cacheNotification,
  ) : super(CustomerViewInitial()) {
    on<CustomerViewEvent>((event, emit) {});

    final today = DateTime.now();

    customers$.takeUntil(stream).listen((customers) {
      for (var customer in customers) {
        final remindContactDayAfterNumber =
            _user.setting.remindContactDayAfterNumber;
        final lastContactDateDiff =
            today.difference(customer.lastContactDate).inDays;
        if (_user.setting.enableRemindContact &&
            lastContactDateDiff > remindContactDayAfterNumber) {
          final notificationId = _cacheNotification.get(customer.id);
          final remindDate = customer.lastContactDate
              .add(Duration(days: remindContactDayAfterNumber));
          if (notificationId != null) {
            AppNotification.cancel(notificationId);
          }

          AppNotification.createReminderContactCustomerNotification(
            customer,
            remindDate,
          ).then((id) => _cacheNotification.add(customer.id));
        }
      }
    });
  }

  Stream<List<Customer>> get customers$ => _customerRepository.queryStream();
}
