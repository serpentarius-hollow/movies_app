// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Movie on _Movie, Store {
  final _$idAtom = Atom(name: '_Movie.id');

  @override
  String get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(String value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  final _$titleAtom = Atom(name: '_Movie.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$directorAtom = Atom(name: '_Movie.director');

  @override
  String get director {
    _$directorAtom.reportRead();
    return super.director;
  }

  @override
  set director(String value) {
    _$directorAtom.reportWrite(value, super.director, () {
      super.director = value;
    });
  }

  final _$summaryAtom = Atom(name: '_Movie.summary');

  @override
  String get summary {
    _$summaryAtom.reportRead();
    return super.summary;
  }

  @override
  set summary(String value) {
    _$summaryAtom.reportWrite(value, super.summary, () {
      super.summary = value;
    });
  }

  final _$tagAtom = Atom(name: '_Movie.tag');

  @override
  dynamic get tag {
    _$tagAtom.reportRead();
    return super.tag;
  }

  @override
  set tag(dynamic value) {
    _$tagAtom.reportWrite(value, super.tag, () {
      super.tag = value;
    });
  }

  final _$tagListAtom = Atom(name: '_Movie.tagList');

  @override
  ObservableList<String> get tagList {
    _$tagListAtom.reportRead();
    return super.tagList;
  }

  @override
  set tagList(ObservableList<String> value) {
    _$tagListAtom.reportWrite(value, super.tagList, () {
      super.tagList = value;
    });
  }

  final _$_MovieActionController = ActionController(name: '_Movie');

  @override
  void setTitle(String value) {
    final _$actionInfo =
        _$_MovieActionController.startAction(name: '_Movie.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$_MovieActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDirector(String value) {
    final _$actionInfo =
        _$_MovieActionController.startAction(name: '_Movie.setDirector');
    try {
      return super.setDirector(value);
    } finally {
      _$_MovieActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSummary(String value) {
    final _$actionInfo =
        _$_MovieActionController.startAction(name: '_Movie.setSummary');
    try {
      return super.setSummary(value);
    } finally {
      _$_MovieActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTag(String value) {
    final _$actionInfo =
        _$_MovieActionController.startAction(name: '_Movie.setTag');
    try {
      return super.setTag(value);
    } finally {
      _$_MovieActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTag(String value) {
    final _$actionInfo =
        _$_MovieActionController.startAction(name: '_Movie.removeTag');
    try {
      return super.removeTag(value);
    } finally {
      _$_MovieActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateTitle(String value) {
    final _$actionInfo =
        _$_MovieActionController.startAction(name: '_Movie.validateTitle');
    try {
      return super.validateTitle(value);
    } finally {
      _$_MovieActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateDirector(String value) {
    final _$actionInfo =
        _$_MovieActionController.startAction(name: '_Movie.validateDirector');
    try {
      return super.validateDirector(value);
    } finally {
      _$_MovieActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateSummary(String value) {
    final _$actionInfo =
        _$_MovieActionController.startAction(name: '_Movie.validateSummary');
    try {
      return super.validateSummary(value);
    } finally {
      _$_MovieActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateTaglist(List<String> value) {
    final _$actionInfo =
        _$_MovieActionController.startAction(name: '_Movie.validateTaglist');
    try {
      return super.validateTaglist(value);
    } finally {
      _$_MovieActionController.endAction(_$actionInfo);
    }
  }

  @override
  void saveForm() {
    final _$actionInfo =
        _$_MovieActionController.startAction(name: '_Movie.saveForm');
    try {
      return super.saveForm();
    } finally {
      _$_MovieActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
id: ${id},
title: ${title},
director: ${director},
summary: ${summary},
tag: ${tag},
tagList: ${tagList}
    ''';
  }
}

mixin _$FormErrorState on _FormErrorState, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_FormErrorState.hasErrors'))
          .value;

  final _$titleAtom = Atom(name: '_FormErrorState.title');

  @override
  String? get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String? value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$directorAtom = Atom(name: '_FormErrorState.director');

  @override
  String? get director {
    _$directorAtom.reportRead();
    return super.director;
  }

  @override
  set director(String? value) {
    _$directorAtom.reportWrite(value, super.director, () {
      super.director = value;
    });
  }

  final _$summaryAtom = Atom(name: '_FormErrorState.summary');

  @override
  String? get summary {
    _$summaryAtom.reportRead();
    return super.summary;
  }

  @override
  set summary(String? value) {
    _$summaryAtom.reportWrite(value, super.summary, () {
      super.summary = value;
    });
  }

  final _$tagListAtom = Atom(name: '_FormErrorState.tagList');

  @override
  String? get tagList {
    _$tagListAtom.reportRead();
    return super.tagList;
  }

  @override
  set tagList(String? value) {
    _$tagListAtom.reportWrite(value, super.tagList, () {
      super.tagList = value;
    });
  }

  @override
  String toString() {
    return '''
title: ${title},
director: ${director},
summary: ${summary},
tagList: ${tagList},
hasErrors: ${hasErrors}
    ''';
  }
}
