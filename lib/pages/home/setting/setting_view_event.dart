part of 'setting_view_bloc.dart';

@immutable
abstract class SettingViewEvent extends Equatable {}

class SettingViewUpdateRemindContactCustomerEvent extends SettingViewEvent {
  final RemindContactCustomerSetting remindContactCustomerSetting;

  SettingViewUpdateRemindContactCustomerEvent(
      this.remindContactCustomerSetting);

  @override
  List<Object?> get props => [remindContactCustomerSetting];
}

class SettingViewSignOutEvent extends SettingViewEvent {
  @override
  List<Object?> get props => [];
}
