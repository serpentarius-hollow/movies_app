// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MovieList on _MovieList, Store {
  final _$moviesAtom = Atom(name: '_MovieList.movies');

  @override
  ObservableList<Movie> get movies {
    _$moviesAtom.reportRead();
    return super.movies;
  }

  @override
  set movies(ObservableList<Movie> value) {
    _$moviesAtom.reportWrite(value, super.movies, () {
      super.movies = value;
    });
  }

  final _$_MovieListActionController = ActionController(name: '_MovieList');

  @override
  void removeMovie(String id) {
    final _$actionInfo = _$_MovieListActionController.startAction(
        name: '_MovieList.removeMovie');
    try {
      return super.removeMovie(id);
    } finally {
      _$_MovieListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addMovie(Movie movie) {
    final _$actionInfo =
        _$_MovieListActionController.startAction(name: '_MovieList.addMovie');
    try {
      return super.addMovie(movie);
    } finally {
      _$_MovieListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateMovie(Movie movie) {
    final _$actionInfo = _$_MovieListActionController.startAction(
        name: '_MovieList.updateMovie');
    try {
      return super.updateMovie(movie);
    } finally {
      _$_MovieListActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
movies: ${movies}
    ''';
  }
}
