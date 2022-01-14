// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/network/api/image.dart' as _i3;
import '../data/repository/image.dart' as _i4;
import '../domain/images.dart' as _i5;
import '../view/home/screen/bloc/bloc.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.ImageApi>(() => _i3.ImageApiImpl());
  gh.factory<_i4.ImageRepository>(
      () => _i4.ImageRepositoryImpl(get<_i3.ImageApi>()));
  gh.factory<_i5.ImagesUseCase>(
      () => _i5.ImagesUseCaseImpl(get<_i4.ImageRepository>()));
  gh.factory<_i6.HomeBloc>(() => _i6.HomeBloc(get<_i5.ImagesUseCase>()));
  return get;
}
