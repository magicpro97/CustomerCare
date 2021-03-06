import 'package:bloc/bloc.dart';
import 'package:customer_care/features/authentication/user_session.dart';
import 'package:customer_care/features/setting/remind_contact_customer_setting.dart';
import 'package:customer_care/features/setting/repository/setting_repository.dart';
import 'package:customer_care/features/user/setting.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'setting_view_event.dart';

part 'setting_view_state.dart';

@injectable
class SettingViewBloc extends Bloc<SettingViewEvent, SettingViewState> {
  final ISettingRepository _settingRepository;
  final UserSession _userSession;

  SettingViewBloc(
    this._settingRepository,
    this._userSession,
  ) : super(SettingViewInitial()) {
    on<SettingViewEvent>((event, emit) async {
      emit(SettingViewLoading());
      if (event is SettingViewUpdateRemindContactCustomerEvent) {
        try {
          await _settingRepository.updateRemindContactToCustomer(
              event.remindContactCustomerSetting);
          emit(SettingViewLoadedSuccess());
        } catch (e) {
          emit(SettingViewLoadedFailure());
        }
      } else if (event is SettingViewSignOutEvent) {
        try {
          await _userSession.signOut();
          emit(SettingViewSignOutSuccess());
        } catch (e) {
          emit(SettingViewSignOutFailure());
        }
      }
    });
  }

  Stream<Setting> get setting$ => _settingRepository.setting$;

  Stream<RemindContactCustomerSetting> get reminderContactCustomerSetting$ =>
      setting$.map(
          (setting) => RemindContactCustomerSetting.fromJson(setting.toJson()));
}
