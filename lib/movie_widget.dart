import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:movies_app/movie.dart';
import 'package:movies_app/movie_list.dart';
import 'package:provider/provider.dart';

enum Mode { add, update }

class UpdateMoviePage extends StatelessWidget {
  final String movieId;

  UpdateMoviePage({
    @PathParam('movieId') required this.movieId,
  });

  @override
  Widget build(BuildContext context) {
    final list = Provider.of<MovieList>(context);
    final movieStore = list.movies.singleWhere(
      (element) => element.id == movieId,
    );

    final newMovie = Movie(
      movieStore.id,
      movieStore.title,
      movieStore.director,
      movieStore.summary,
      null,
      ObservableList.of(movieStore.tagList),
    );

    return MovieWidget(movie: newMovie, mode: Mode.update);
  }
}

class AddMoviePage extends StatelessWidget {
  final movie = Movie('', '', '', '', null, ObservableList<String>());

  @override
  Widget build(BuildContext context) {
    return MovieWidget(movie: movie, mode: Mode.add);
  }
}

class MovieWidget extends StatelessWidget {
  final List<String> tags = ['Action', 'Comedy', 'Fantasy', 'Horror', 'Sci-Fi'];

  final Movie movie;
  final Mode mode;

  MovieWidget({
    required this.mode,
    required this.movie,
  });

  void save(Mode mode, MovieList list, Movie movie, BuildContext context) {
    movie.validateAll();
    if (!movie.error.hasErrors) {
      movie.saveForm();

      if (mode == Mode.update) {
        list.updateMovie(movie);
      } else {
        list.addMovie(movie);
      }

      context.router.pop();
    }
  }

  void unfocusNode(BuildContext context) {
    final currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    final list = Provider.of<MovieList>(context);

    return WillPopScope(
      onWillPop: () async {
        print(list.movies.toString());
        return true;
      },
      child: GestureDetector(
        onTap: () => unfocusNode(context),
        child: Scaffold(
          appBar: AppBar(
            title: Text(mode == Mode.update ? 'Update Movie' : 'Add Movie'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Observer(builder: (_) {
                    return TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Title',
                        errorText: movie.error.title,
                      ),
                      initialValue: movie.title,
                      onChanged: (val) => movie.setTitle(val),
                      textCapitalization: TextCapitalization.words,
                    );
                  }),
                  Observer(builder: (_) {
                    return TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Director',
                        errorText: movie.error.director,
                      ),
                      initialValue: movie.director,
                      onChanged: (val) => movie.setDirector(val),
                      textCapitalization: TextCapitalization.words,
                    );
                  }),
                  Observer(builder: (_) {
                    return TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Summary',
                        errorText: movie.error.summary,
                      ),
                      initialValue: movie.summary,
                      onChanged: (val) => movie.setSummary(val),
                      textCapitalization: TextCapitalization.words,
                    );
                  }),
                  Observer(builder: (_) {
                    return movie.tagList.isNotEmpty
                        ? SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: movie.tagList
                                  .map((tag) => Padding(
                                        padding: EdgeInsets.only(
                                          right: 5,
                                          top: 10,
                                        ),
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                              primary: Colors.white,
                                              backgroundColor: Colors.blue,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              25)))),
                                          onPressed: () {
                                            movie.removeTag(tag);
                                          },
                                          child: Text(tag),
                                        ),
                                      ))
                                  .toList(),
                            ),
                          )
                        : Container();
                  }),
                  Observer(builder: (_) {
                    return DropdownButtonFormField<String>(
                      items: tags
                          .map((tag) => DropdownMenuItem<String>(
                                child: Text(tag),
                                value: tag,
                              ))
                          .toList(),
                      isExpanded: true,
                      value: movie.tag,
                      decoration: InputDecoration(
                        labelText: 'Tag',
                        hintText: 'Select A Tag',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        errorText: movie.error.tagList,
                      ),
                      onChanged: (val) {
                        movie.setTag(val!);
                      },
                    );
                  }),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      save(mode, list, movie, context);
                    },
                    child: Text('Save'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
