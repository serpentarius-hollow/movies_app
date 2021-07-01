// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import 'movie_list_widget.dart' as _i3;
import 'movie_widget.dart' as _i4;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    MovieListWidgetRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.MovieListWidget();
        }),
    AddMoviePageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.AddMoviePage();
        }),
    UpdateMoviePageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<UpdateMoviePageRouteArgs>(
              orElse: () => UpdateMoviePageRouteArgs(
                  movieId: pathParams.getString('movieId')));
          return _i4.UpdateMoviePage(movieId: args.movieId);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(MovieListWidgetRoute.name, path: '/'),
        _i1.RouteConfig(AddMoviePageRoute.name, path: '/add_movie'),
        _i1.RouteConfig(UpdateMoviePageRoute.name,
            path: '/update_movie/:movieId')
      ];
}

class MovieListWidgetRoute extends _i1.PageRouteInfo {
  const MovieListWidgetRoute() : super(name, path: '/');

  static const String name = 'MovieListWidgetRoute';
}

class AddMoviePageRoute extends _i1.PageRouteInfo {
  const AddMoviePageRoute() : super(name, path: '/add_movie');

  static const String name = 'AddMoviePageRoute';
}

class UpdateMoviePageRoute extends _i1.PageRouteInfo<UpdateMoviePageRouteArgs> {
  UpdateMoviePageRoute({required String movieId})
      : super(name,
            path: '/update_movie/:movieId',
            args: UpdateMoviePageRouteArgs(movieId: movieId),
            rawPathParams: {'movieId': movieId});

  static const String name = 'UpdateMoviePageRoute';
}

class UpdateMoviePageRouteArgs {
  const UpdateMoviePageRouteArgs({required this.movieId});

  final String movieId;
}
