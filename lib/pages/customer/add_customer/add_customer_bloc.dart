import 'package:bloc/bloc.dart';
import 'package:customer_care/features/customer/customer.dart';
import 'package:customer_care/features/customer/repository/customer_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'add_customer_event.dart';

part 'add_customer_state.dart';

@injectable
class AddCustomerBloc extends Bloc<AddCustomerEvent, AddCustomerState> {
  final ICustomerRepository _customerRepository;

  AddCustomerBloc(this._customerRepository) : super(AddCustomerInitial()) {
    on<AddCustomerEvent>((event, emit) async {
      if (event is AddCustomerCreateEvent) {
        emit(AddCustomerLoading());
        try {
          await _customerRepository.add('1', event.customer);
          emit(AddCustomerLoadedSuccess());
        } catch (e) {
          emit(AddCustomerLoadedFail());
        }
      }
    });
  }
}
