import 'package:bloc/bloc.dart';
import 'package:customer_care/features/customer/customer.dart';
import 'package:customer_care/features/customer/repository/customer_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'edit_customer_event.dart';

part 'edit_customer_state.dart';

@injectable
class EditCustomerBloc extends Bloc<EditCustomerEvent, EditCustomerState> {
  final ICustomerRepository _customerRepository;

  EditCustomerBloc(this._customerRepository) : super(EditCustomerInitial()) {
    on<EditCustomerEvent>((event, emit) async {
      if (event is EditCustomerSaveEvent) {
        emit(EditCustomerLoading());
        try {
          await _customerRepository.update('1', event.customer);
          emit(EditCustomerLoadedSuccess());
        } catch (e) {
          emit(EditCustomerLoadedFail());
        }
      } else if (event is EditCustomerRemoveCustomerEvent) {
        emit(EditCustomerLoading());
        try {
          await _customerRepository.delete('1', event.customerId);
          emit(EditCustomerLoadedSuccess());
        } catch (e) {
          emit(EditCustomerLoadedFail());
        }
      }
    });
  }
}
