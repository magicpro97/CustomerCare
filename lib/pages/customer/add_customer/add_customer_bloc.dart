import 'package:bloc/bloc.dart';
import 'package:customer_care/features/customer/repository/customer_repository.dart';
import 'package:customer_care/pages/customer/customer_factory.dart';
import 'package:customer_care/pages/customer/widgets/customer_item_page/customer_input.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'add_customer_event.dart';

part 'add_customer_state.dart';

@injectable
class AddCustomerBloc extends Bloc<AddCustomerEvent, AddCustomerState> {
  final ICustomerRepository _customerRepository;
  final CustomerFactory _customerFactory;

  AddCustomerBloc(
    this._customerRepository,
    this._customerFactory,
  ) : super(AddCustomerInitial()) {
    on<AddCustomerEvent>((event, emit) async {
      if (event is AddCustomerCreateEvent) {
        emit(AddCustomerLoading());
        try {
          final customer = _customerFactory.generateCustomer(event.customer);
          await _customerRepository.add(customer);
          emit(AddCustomerLoadedSuccess());
        } catch (e) {
          emit(AddCustomerLoadedFail());
        }
      }
    });
  }
}
