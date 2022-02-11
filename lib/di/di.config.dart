// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

import '../features/authentication/google_provider.dart' as _i6;
import '../features/authentication/user_session.dart' as _i11;
import '../features/customer/repository/customer_repository.dart' as _i16;
import '../features/customer/service/customer_service.dart' as _i12;
import '../features/notification/cache_notification.dart' as _i9;
import '../features/setting/repository/setting_repository.dart' as _i17;
import '../features/setting/service/setting_service.dart' as _i13;
import '../features/user/repository/user_repository.dart' as _i10;
import '../features/user/service/user_service.dart' as _i7;
import '../pages/customer/add_customer/add_customer_bloc.dart' as _i19;
import '../pages/customer/edit_customer/edit_customer_bloc.dart' as _i21;
import '../pages/home/customer/customer_view_bloc.dart' as _i20;
import '../pages/home/home/home_view_bloc.dart' as _i23;
import '../pages/home/home_page_bloc.dart' as _i22;
import '../pages/home/setting/setting_view_bloc.dart' as _i18;
import '../pages/sign_in/sign_in_bloc.dart' as _i14;
import '../pages/splash/splash_bloc.dart' as _i15;
import '../router/app_router.dart' as _i3;
import 'register_module.dart' as _i24; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.AppRouter>(_i3.AppRouter());
  gh.factory<_i4.FirebaseAuth>(() => registerModule.firebaseAuth);
  gh.factory<_i5.FirebaseFirestore>(() => registerModule.firebaseFirestore);
  gh.singleton<_i6.GoogleProvider>(_i6.GoogleProvider(get<_i4.FirebaseAuth>()));
  gh.singleton<_i7.IUserService>(_i7.UserService(get<_i5.FirebaseFirestore>()));
  await gh.factoryAsync<_i8.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true);
  gh.singleton<_i9.CacheNotification>(
      _i9.CacheNotification(get<_i8.SharedPreferences>()));
  gh.singleton<_i10.IUserRepository>(
      _i10.UserRepository(get<_i7.IUserService>()));
  gh.singleton<_i11.UserSession>(_i11.UserSession(get<_i4.FirebaseAuth>(),
      get<_i10.IUserRepository>(), get<_i6.GoogleProvider>()));
  gh.singleton<_i12.ICustomerService>(_i12.CustomerService(
      get<_i5.FirebaseFirestore>(), get<_i11.UserSession>()));
  gh.singleton<_i13.ISettingService>(_i13.SettingService(
      get<_i11.UserSession>(), get<_i5.FirebaseFirestore>()));
  gh.factory<_i14.SignInBloc>(() =>
      _i14.SignInBloc(get<_i10.IUserRepository>(), get<_i11.UserSession>()));
  gh.factory<_i15.SplashBloc>(() => _i15.SplashBloc(get<_i11.UserSession>()));
  gh.singleton<_i16.ICustomerRepository>(
      _i16.CustomerRepository(get<_i12.ICustomerService>()));
  gh.singleton<_i17.ISettingRepository>(
      _i17.SettingRepository(get<_i13.ISettingService>()));
  gh.factory<_i18.SettingViewBloc>(() => _i18.SettingViewBloc(
      get<_i17.ISettingRepository>(), get<_i11.UserSession>()));
  gh.factory<_i19.AddCustomerBloc>(
      () => _i19.AddCustomerBloc(get<_i16.ICustomerRepository>()));
  gh.factory<_i20.CustomerViewBloc>(() => _i20.CustomerViewBloc(
      get<_i16.ICustomerRepository>(), get<_i9.CacheNotification>()));
  gh.factory<_i21.EditCustomerBloc>(
      () => _i21.EditCustomerBloc(get<_i16.ICustomerRepository>()));
  gh.factory<_i22.HomePageBloc>(
      () => _i22.HomePageBloc(get<_i16.ICustomerRepository>()));
  gh.factory<_i23.HomeViewBloc>(
      () => _i23.HomeViewBloc(get<_i16.ICustomerRepository>()));
  return get;
}

class _$RegisterModule extends _i24.RegisterModule {}
