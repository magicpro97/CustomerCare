// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:firebase_storage/firebase_storage.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i13;

import '../features/authentication/google_provider.dart' as _i9;
import '../features/authentication/user_session.dart' as _i18;
import '../features/customer/repository/customer_repository.dart' as _i15;
import '../features/customer/service/customer_service.dart' as _i10;
import '../features/notification/cache_notification.dart' as _i14;
import '../features/setting/repository/setting_repository.dart' as _i16;
import '../features/setting/service/setting_service.dart' as _i11;
import '../features/user/repository/user_repository.dart' as _i17;
import '../features/user/service/user_service.dart' as _i12;
import '../pages/customer/add_customer/add_customer_bloc.dart' as _i19;
import '../pages/customer/customer_factory.dart' as _i5;
import '../pages/customer/edit_customer/edit_customer_bloc.dart' as _i21;
import '../pages/home/customer/customer_view_bloc.dart' as _i20;
import '../pages/home/home/customer_contact_factory.dart' as _i4;
import '../pages/home/home/home_view_bloc.dart' as _i23;
import '../pages/home/home_page_bloc.dart' as _i22;
import '../pages/home/setting/setting_view_bloc.dart' as _i24;
import '../pages/sign_in/sign_in_bloc.dart' as _i25;
import '../pages/splash/splash_bloc.dart' as _i26;
import '../router/app_router.dart' as _i3;
import 'register_module.dart' as _i27; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i8.FirebaseStorage>(() => registerModule.firebaseStorage);
  gh.singleton<_i9.GoogleProvider>(_i9.GoogleProvider(get<_i6.FirebaseAuth>()));
  gh.singleton<_i10.ICustomerService>(
      _i10.CustomerService(get<_i7.FirebaseFirestore>()));
  gh.singleton<_i11.ISettingService>(
      _i11.SettingService(get<_i7.FirebaseFirestore>()));
  gh.singleton<_i12.IUserService>(
      _i12.UserService(get<_i7.FirebaseFirestore>()));
  await gh.factoryAsync<_i13.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true);
  gh.singleton<_i14.CacheNotification>(
      _i14.CacheNotification(get<_i13.SharedPreferences>()));
  gh.singleton<_i15.ICustomerRepository>(
      _i15.CustomerRepository(get<_i10.ICustomerService>()));
  gh.singleton<_i16.ISettingRepository>(
      _i16.SettingRepository(get<_i11.ISettingService>()));
  gh.singleton<_i17.IUserRepository>(
      _i17.UserRepository(get<_i12.IUserService>()));
  gh.singleton<_i18.UserSession>(_i18.UserSession(
      get<_i6.FirebaseAuth>(),
      get<_i17.IUserRepository>(),
      get<_i9.GoogleProvider>(),
      get<_i13.SharedPreferences>()));
  gh.factory<_i19.AddCustomerBloc>(() => _i19.AddCustomerBloc(
      get<_i15.ICustomerRepository>(), get<_i5.CustomerFactory>()));
  gh.factory<_i20.CustomerViewBloc>(() => _i20.CustomerViewBloc(
      get<_i15.ICustomerRepository>(),
      get<_i14.CacheNotification>(),
      get<_i5.CustomerFactory>()));
  gh.factory<_i21.EditCustomerBloc>(() => _i21.EditCustomerBloc(
      get<_i15.ICustomerRepository>(), get<_i5.CustomerFactory>()));
  gh.factory<_i22.HomePageBloc>(
      () => _i22.HomePageBloc(get<_i15.ICustomerRepository>()));
  gh.factory<_i23.HomeViewBloc>(() => _i23.HomeViewBloc(
      get<_i15.ICustomerRepository>(), get<_i4.CustomerContactFactory>()));
  gh.factory<_i24.SettingViewBloc>(() => _i24.SettingViewBloc(
      get<_i16.ISettingRepository>(), get<_i18.UserSession>()));
  gh.factory<_i25.SignInBloc>(() =>
      _i25.SignInBloc(get<_i17.IUserRepository>(), get<_i18.UserSession>()));
  gh.factory<_i26.SplashBloc>(() => _i26.SplashBloc(get<_i18.UserSession>()));
  return get;
}

class _$RegisterModule extends _i27.RegisterModule {}
