part of 'setting_view_bloc.dart';

@immutable
abstract class SettingViewState extends Equatable {}

class SettingViewInitial extends SettingViewState {
  @override
  List<Object?> get props => [];
}

class SettingViewLoading extends SettingViewState {
  @override
  List<Object?> get props => [];
}

class SettingViewLoadedSuccess extends SettingViewState {
  @override
  List<Object?> get props => [];
}

class SettingViewLoadedFailure extends SettingViewState {
  @override
  List<Object?> get props => [];
}