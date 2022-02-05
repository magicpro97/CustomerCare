// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/customer/repository/customer_repository.dart' as _i6;
import '../features/customer/service/customer_service.dart' as _i5;
import '../pages/customer/add_customer/add_customer_bloc.dart' as _i7;
import '../pages/customer/edit_customer/edit_customer_bloc.dart' as _i8;
import '../pages/home/home_page_bloc.dart' as _i9;
import '../router/app_router.dart' as _i3;
import 'register_module.dart' as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.AppRouter>(_i3.AppRouter());
  gh.factory<_i4.FirebaseFirestore>(() => registerModule.firebaseFirestore);
  gh.singleton<_i5.ICustomerService>(
      _i5.CustomerService(get<_i4.FirebaseFirestore>()));
  gh.singleton<_i6.ICustomerRepository>(
      _i6.CustomerRepository(get<_i5.ICustomerService>()));
  gh.factory<_i7.AddCustomerBloc>(
      () => _i7.AddCustomerBloc(get<_i6.ICustomerRepository>()));
  gh.factory<_i8.EditCustomerBloc>(
      () => _i8.EditCustomerBloc(get<_i6.ICustomerRepository>()));
  gh.factory<_i9.HomePageBloc>(
      () => _i9.HomePageBloc(get<_i6.ICustomerRepository>()));
  return get;
}

class _$RegisterModule extends _i10.RegisterModule {}
