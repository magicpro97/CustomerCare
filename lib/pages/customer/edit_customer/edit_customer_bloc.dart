import 'package:bloc/bloc.dart';
import 'package:customer_care/features/customer/repository/customer_repository.dart';
import 'package:customer_care/pages/customer/customer_factory.dart';
import 'package:customer_care/pages/customer/widgets/customer_item_page/customer_input.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'edit_customer_event.dart';
part 'edit_customer_state.dart';

@injectable
class EditCustomerBloc extends Bloc<EditCustomerEvent, EditCustomerState> {
  final ICustomerRepository _customerRepository;
  final CustomerFactory _customerFactory;

  EditCustomerBloc(
    this._customerRepository,
    this._customerFactory,
  ) : super(EditCustomerInitial()) {
    on<EditCustomerSaveEvent>(_save);

    on<EditCustomerDeleteCustomerEvent>(_delete);
  }

  Future<void> _save(
      EditCustomerSaveEvent event, Emitter<EditCustomerState> emit) async {
    emit(EditCustomerLoading());
    try {
      final customer = _customerFactory.updateCustomer(event.customerInput);
      await _customerRepository.update(customer);
      emit(EditCustomerLoadedSuccess());
    } catch (e) {
      emit(EditCustomerLoadedFailure());
    }
  }

  Future<void> _delete(EditCustomerDeleteCustomerEvent event,
      Emitter<EditCustomerState> emit) async {
    emit(EditCustomerLoading());
    try {
      await _customerRepository.delete(event.customerId);
      emit(EditCustomerLoadedSuccess());
    } catch (e) {
      emit(EditCustomerLoadedFailure());
    }
  }
}
