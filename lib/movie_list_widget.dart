import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movies_app/movie_list.dart';
import 'package:auto_route/auto_route.dart';
import 'package:provider/provider.dart';

class MovieListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
        actions: [
          TextButton(
            onPressed: () {
              context.router.pushNamed("/add_movie");
            },
            child: Text(
              'Add',
              style: TextStyle(
                color: Theme.of(context).primaryIconTheme.color,
              ),
            ),
          )
        ],
      ),
      body: MovieListView(),
    );
  }
}

class MovieListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final list = Provider.of<MovieList>(context);

    if (list.movies.isNotEmpty) {
      return Observer(
        builder: (_) => ListView.separated(
          padding: EdgeInsets.all(8.0),
          separatorBuilder: (_, index) {
            return Divider();
          },
          itemCount: list.movies.length,
          itemBuilder: (_, index) {
            final movie = list.movies[index];

            return MovieTile(
              id: movie.id,
              title: movie.title,
              director: movie.director,
            );
          },
        ),
      );
    } else {
      return Center(
        child: Text('Movies Empty'),
      );
    }
  }
}

class MovieTile extends StatelessWidget {
  final String id;
  final String title;
  final String director;

  const MovieTile({
    required this.id,
    required this.title,
    required this.director,
  });

  @override
  Widget build(BuildContext context) {
    final list = Provider.of<MovieList>(context);

    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.red,
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Delete',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Colors.red[100]),
            ),
            const SizedBox(
              width: 5,
            ),
            Icon(
              Icons.delete,
              color: Colors.red[100],
            )
          ],
        ),
      ),
      onDismissed: (_) => list.removeMovie(id),
      child: ListTile(
        title: Text(title),
        subtitle: Text(director),
        onTap: () {
          context.router.pushNamed('/update_movie/$id');
        },
      ),
    );
  }
}
