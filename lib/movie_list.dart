import 'package:mobx/mobx.dart';
import 'package:movies_app/movie.dart';

part 'movie_list.g.dart';

class MovieList = _MovieList with _$MovieList;

abstract class _MovieList with Store {
  @observable
  ObservableList<Movie> movies = ObservableList<Movie>();

  @action
  void removeMovie(String id) {
    movies.removeWhere((element) => element.id == id);
  }

  @action
  void addMovie(Movie movie) {
    movies.add(movie);
  }

  @action
  void updateMovie(Movie movie) {
    final index = movies.indexWhere((element) => element.id == movie.id);

    movies[index].title = movie.title;
    movies[index].director = movie.director;
    movies[index].summary = movie.summary;
    movies[index].tagList = movie.tagList;
  }
}
