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
import 'package:netflix/application/home/home_bloc.dart' as _i12;
import 'package:netflix/application/new_and_hot/new_and_hot_bloc.dart' as _i13;
import 'package:netflix/application/search/search_bloc.dart' as _i14;
import 'package:netflix/domain/downloads/models/download_services.dart' as _i3;
import 'package:netflix/domain/home/home_services.dart' as _i6;
import 'package:netflix/domain/new_hot/new_hot_services.dart' as _i8;
import 'package:netflix/domain/search/search_services.dart' as _i10;
import 'package:netflix/infrastructure/downloads/downloads_repository.dart'
    as _i4;
import 'package:netflix/infrastructure/home/home_repository.dart' as _i7;
import 'package:netflix/infrastructure/new_hot/new_hot_repository.dart' as _i9;
import 'package:netflix/infrastructure/search/search_repository.dart' as _i11;

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
    gh.lazySingleton<_i6.HomeServices>(() => _i7.HomeRepository());
    gh.lazySingleton<_i8.NewHotServices>(() => _i9.NewandHotRepository());
    gh.lazySingleton<_i10.SearchServices>(() => _i11.SearchRepository());
    gh.factory<_i12.HomeBloc>(() => _i12.HomeBloc(gh<_i6.HomeServices>()));
    gh.factory<_i13.NewAndHotBloc>(
        () => _i13.NewAndHotBloc(gh<_i8.NewHotServices>()));
    gh.factory<_i14.SearchBloc>(
        () => _i14.SearchBloc(gh<_i10.SearchServices>()));
    return this;
  }
}
