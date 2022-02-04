import 'package:bloc/bloc.dart';
import 'package:customer_care/features/customer/customer.dart';
import 'package:customer_care/features/customer/repository/customer_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'home_page_event.dart';

part 'home_page_state.dart';

@injectable
class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final ICustomerRepository _customerRepository;

  String lastCustomerId = '';

  HomePageBloc(this._customerRepository) : super(HomePageInitial()) {
    on<HomePageEvent>((event, emit) async {
      if (event is HomePageInitial) {
        emit(HomePageLoading());
        final customers =
            await _customerRepository.startAfter('userId', lastCustomerId);
        if (customers.isNotEmpty) {
          lastCustomerId = customers.last.id;
        }
        emit(HomePageLoaded(customers));
      } else if (event is HomePageLoadMoreEvent) {
        emit(HomePageLoading());
        final customers =
            await _customerRepository.startAfter('userId', lastCustomerId);
        emit(HomePageLoaded(customers));
      }
    });
  }
}
