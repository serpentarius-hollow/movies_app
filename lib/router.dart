import 'package:auto_route/auto_route.dart';
import 'package:movies_app/movie_list_widget.dart';
import 'package:movies_app/movie_widget.dart';

@MaterialAutoRouter(
  // replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: MovieListWidget, initial: true),
    AutoRoute(path: '/add_movie', page: AddMoviePage),
    AutoRoute(path: '/update_movie/:movieId', page: UpdateMoviePage),
  ],
)
class $AppRouter {}
