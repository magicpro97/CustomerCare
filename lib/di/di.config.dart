// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/authentication/google_provider.dart' as _i6;
import '../features/authentication/user_session.dart' as _i10;
import '../features/customer/repository/customer_repository.dart' as _i13;
import '../features/customer/service/customer_service.dart' as _i11;
import '../features/user/repository/user_repository.dart' as _i8;
import '../features/user/service/user_service.dart' as _i7;
import '../pages/customer/add_customer/add_customer_bloc.dart' as _i14;
import '../pages/customer/edit_customer/edit_customer_bloc.dart' as _i15;
import '../pages/home/home_page_bloc.dart' as _i16;
import '../pages/sign_in/sign_in_bloc.dart' as _i9;
import '../pages/splash/splash_bloc.dart' as _i12;
import '../router/app_router.dart' as _i3;
import 'register_module.dart' as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.AppRouter>(_i3.AppRouter());
  gh.factory<_i4.FirebaseAuth>(() => registerModule.firebaseAuth);
  gh.factory<_i5.FirebaseFirestore>(() => registerModule.firebaseFirestore);
  gh.singleton<_i6.GoogleProvider>(_i6.GoogleProvider(get<_i4.FirebaseAuth>()));
  gh.singleton<_i7.IUserService>(_i7.UserService(get<_i5.FirebaseFirestore>()));
  gh.singleton<_i8.IUserRepository>(
      _i8.UserRepository(get<_i7.IUserService>()));
  gh.factory<_i9.SignInBloc>(() =>
      _i9.SignInBloc(get<_i6.GoogleProvider>(), get<_i8.IUserRepository>()));
  gh.singleton<_i10.UserSession>(
      _i10.UserSession(get<_i4.FirebaseAuth>(), get<_i8.IUserRepository>()));
  gh.singleton<_i11.ICustomerService>(_i11.CustomerService(
      get<_i5.FirebaseFirestore>(), get<_i10.UserSession>()));
  gh.factory<_i12.SplashBloc>(() => _i12.SplashBloc(get<_i10.UserSession>()));
  gh.singleton<_i13.ICustomerRepository>(
      _i13.CustomerRepository(get<_i11.ICustomerService>()));
  gh.factory<_i14.AddCustomerBloc>(
      () => _i14.AddCustomerBloc(get<_i13.ICustomerRepository>()));
  gh.factory<_i15.EditCustomerBloc>(
      () => _i15.EditCustomerBloc(get<_i13.ICustomerRepository>()));
  gh.factory<_i16.HomePageBloc>(
      () => _i16.HomePageBloc(get<_i13.ICustomerRepository>()));
  return get;
}

class _$RegisterModule extends _i17.RegisterModule {}
