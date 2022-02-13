// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i10;

import '../features/authentication/google_provider.dart' as _i8;
import '../features/authentication/user_session.dart' as _i13;
import '../features/customer/repository/customer_repository.dart' as _i18;
import '../features/customer/service/customer_service.dart' as _i14;
import '../features/notification/cache_notification.dart' as _i11;
import '../features/setting/repository/setting_repository.dart' as _i19;
import '../features/setting/service/setting_service.dart' as _i15;
import '../features/user/repository/user_repository.dart' as _i12;
import '../features/user/service/user_service.dart' as _i9;
import '../pages/customer/add_customer/add_customer_bloc.dart' as _i21;
import '../pages/customer/customer_factory.dart' as _i5;
import '../pages/customer/edit_customer/edit_customer_bloc.dart' as _i23;
import '../pages/home/customer/customer_view_bloc.dart' as _i22;
import '../pages/home/home/customer_contact_factory.dart' as _i4;
import '../pages/home/home/home_view_bloc.dart' as _i25;
import '../pages/home/home_page_bloc.dart' as _i24;
import '../pages/home/setting/setting_view_bloc.dart' as _i20;
import '../pages/sign_in/sign_in_bloc.dart' as _i16;
import '../pages/splash/splash_bloc.dart' as _i17;
import '../router/app_router.dart' as _i3;
import 'register_module.dart' as _i26; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.AppRouter>(_i3.AppRouter());
  gh.factory<_i4.CustomerContactFactory>(() => _i4.CustomerContactFactory());
  gh.factory<_i5.CustomerFactory>(() => _i5.CustomerFactory());
  gh.factory<_i6.FirebaseAuth>(() => registerModule.firebaseAuth);
  gh.factory<_i7.FirebaseFirestore>(() => registerModule.firebaseFirestore);
  gh.singleton<_i8.GoogleProvider>(_i8.GoogleProvider(get<_i6.FirebaseAuth>()));
  gh.singleton<_i9.IUserService>(_i9.UserService(get<_i7.FirebaseFirestore>()));
  await gh.factoryAsync<_i10.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true);
  gh.singleton<_i11.CacheNotification>(
      _i11.CacheNotification(get<_i10.SharedPreferences>()));
  gh.singleton<_i12.IUserRepository>(
      _i12.UserRepository(get<_i9.IUserService>()));
  gh.singleton<_i13.UserSession>(_i13.UserSession(get<_i6.FirebaseAuth>(),
      get<_i12.IUserRepository>(), get<_i8.GoogleProvider>()));
  gh.singleton<_i14.ICustomerService>(_i14.CustomerService(
      get<_i7.FirebaseFirestore>(), get<_i13.UserSession>()));
  gh.singleton<_i15.ISettingService>(_i15.SettingService(
      get<_i13.UserSession>(), get<_i7.FirebaseFirestore>()));
  gh.factory<_i16.SignInBloc>(() =>
      _i16.SignInBloc(get<_i12.IUserRepository>(), get<_i13.UserSession>()));
  gh.factory<_i17.SplashBloc>(() => _i17.SplashBloc(get<_i13.UserSession>()));
  gh.singleton<_i18.ICustomerRepository>(
      _i18.CustomerRepository(get<_i14.ICustomerService>()));
  gh.singleton<_i19.ISettingRepository>(
      _i19.SettingRepository(get<_i15.ISettingService>()));
  gh.factory<_i20.SettingViewBloc>(() => _i20.SettingViewBloc(
      get<_i19.ISettingRepository>(), get<_i13.UserSession>()));
  gh.factory<_i21.AddCustomerBloc>(() => _i21.AddCustomerBloc(
      get<_i18.ICustomerRepository>(), get<_i5.CustomerFactory>()));
  gh.factory<_i22.CustomerViewBloc>(() => _i22.CustomerViewBloc(
      get<_i18.ICustomerRepository>(),
      get<_i11.CacheNotification>(),
      get<_i5.CustomerFactory>()));
  gh.factory<_i23.EditCustomerBloc>(() => _i23.EditCustomerBloc(
      get<_i18.ICustomerRepository>(), get<_i5.CustomerFactory>()));
  gh.factory<_i24.HomePageBloc>(
      () => _i24.HomePageBloc(get<_i18.ICustomerRepository>()));
  gh.factory<_i25.HomeViewBloc>(() => _i25.HomeViewBloc(
      get<_i18.ICustomerRepository>(), get<_i4.CustomerContactFactory>()));
  return get;
}

class _$RegisterModule extends _i26.RegisterModule {}
