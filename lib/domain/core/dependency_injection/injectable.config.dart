// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:netflix/application/downloads/downloads_bloc.dart' as _i5;
import 'package:netflix/application/search/search_bloc.dart' as _i10;
import 'package:netflix/domain/downloads/models/download_services.dart' as _i3;

import 'package:netflix/domain/search/search_services.dart' as _i8;
import 'package:netflix/infrastructure/downloads/downloads_repository.dart'
    as _i4;

import 'package:netflix/infrastructure/search/search_repository.dart' as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.DownloadServices>(() => _i4.DownloadRepository());
    gh.factory<_i5.DownloadsBloc>(
        () => _i5.DownloadsBloc(gh<_i3.DownloadServices>()));

    gh.lazySingleton<_i8.SearchServices>(() => _i9.SearchRepository());
    gh.factory<_i10.SearchBloc>(
        () => _i10.SearchBloc(gh<_i8.SearchServices>()));
    return this;
  }
}
