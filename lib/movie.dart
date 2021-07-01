import 'package:mobx/mobx.dart';

part 'movie.g.dart';

class Movie = _Movie with _$Movie;

abstract class _Movie with Store {
  _Movie(
      this.id, this.title, this.director, this.summary, this.tag, this.tagList);

  final FormErrorState error = FormErrorState();

  @observable
  String id;

  @observable
  String title;

  @observable
  String director;

  @observable
  String summary;

  @observable
  var tag;

  @observable
  ObservableList<String> tagList;

  @action
  void setTitle(String value) {
    title = value;
  }

  @action
  void setDirector(String value) {
    director = value;
  }

  @action
  void setSummary(String value) {
    summary = value;
  }

  @action
  void setTag(String value) {
    tag = value;

    if (tagList.isNotEmpty) {
      if (!tagList.contains(value)) {
        tagList.add(value);
      }
    } else {
      tagList.add(value);
    }
  }

  @action
  void removeTag(String value) {
    tagList.remove(value);
  }

  bool isNull(String? str) {
    return str == null || str.length == 0;
  }

  @action
  void validateTitle(String value) {
    error.title = isNull(value) || value.isEmpty ? 'Cannot be blank' : null;
  }

  @action
  void validateDirector(String value) {
    error.director = isNull(value) || value.isEmpty ? 'Cannot be blank' : null;
  }

  @action
  void validateSummary(String value) {
    error.summary = isNull(value) || value.isEmpty ? 'Cannot be blank' : null;
  }

  @action
  void validateTaglist(List<String> value) {
    error.tagList = value.isEmpty ? 'Cannot be empty' : null;
  }

  void validateAll() {
    validateTitle(title);
    validateDirector(director);
    validateSummary(summary);
    validateTaglist(tagList);
  }

  @action
  void saveForm() {
    // unique id
    if (isNull(id)) {
      id = DateTime.now().millisecondsSinceEpoch.toString();
    }
    tag = null;
  }
}

class FormErrorState = _FormErrorState with _$FormErrorState;

abstract class _FormErrorState with Store {
  @observable
  String? title;

  @observable
  String? director;

  @observable
  String? summary;

  @observable
  String? tagList;

  @computed
  bool get hasErrors =>
      title != null || director != null || summary != null || tagList != null;
}
