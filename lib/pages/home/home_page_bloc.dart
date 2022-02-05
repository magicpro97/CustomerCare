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

  HomePageBloc(this._customerRepository) : super(HomePageInitial()) {
    on<HomePageEvent>((event, emit) {});
  }

  Stream<List<Customer>> get customer$ => _customerRepository.queryStream('1');
}
