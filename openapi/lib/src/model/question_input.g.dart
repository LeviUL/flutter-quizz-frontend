// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionInput extends QuestionInput {
  @override
  final String question;
  @override
  final BuiltList<String> wrongAnswers;
  @override
  final String goodAnswer;
  @override
  final String categoryId;

  factory _$QuestionInput([void Function(QuestionInputBuilder)? updates]) =>
      (new QuestionInputBuilder()..update(updates))._build();

  _$QuestionInput._(
      {required this.question,
      required this.wrongAnswers,
      required this.goodAnswer,
      required this.categoryId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        question, r'QuestionInput', 'question');
    BuiltValueNullFieldError.checkNotNull(
        wrongAnswers, r'QuestionInput', 'wrongAnswers');
    BuiltValueNullFieldError.checkNotNull(
        goodAnswer, r'QuestionInput', 'goodAnswer');
    BuiltValueNullFieldError.checkNotNull(
        categoryId, r'QuestionInput', 'categoryId');
  }

  @override
  QuestionInput rebuild(void Function(QuestionInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionInputBuilder toBuilder() => new QuestionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionInput &&
        question == other.question &&
        wrongAnswers == other.wrongAnswers &&
        goodAnswer == other.goodAnswer &&
        categoryId == other.categoryId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, question.hashCode);
    _$hash = $jc(_$hash, wrongAnswers.hashCode);
    _$hash = $jc(_$hash, goodAnswer.hashCode);
    _$hash = $jc(_$hash, categoryId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionInput')
          ..add('question', question)
          ..add('wrongAnswers', wrongAnswers)
          ..add('goodAnswer', goodAnswer)
          ..add('categoryId', categoryId))
        .toString();
  }
}

class QuestionInputBuilder
    implements Builder<QuestionInput, QuestionInputBuilder> {
  _$QuestionInput? _$v;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  ListBuilder<String>? _wrongAnswers;
  ListBuilder<String> get wrongAnswers =>
      _$this._wrongAnswers ??= new ListBuilder<String>();
  set wrongAnswers(ListBuilder<String>? wrongAnswers) =>
      _$this._wrongAnswers = wrongAnswers;

  String? _goodAnswer;
  String? get goodAnswer => _$this._goodAnswer;
  set goodAnswer(String? goodAnswer) => _$this._goodAnswer = goodAnswer;

  String? _categoryId;
  String? get categoryId => _$this._categoryId;
  set categoryId(String? categoryId) => _$this._categoryId = categoryId;

  QuestionInputBuilder() {
    QuestionInput._defaults(this);
  }

  QuestionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _question = $v.question;
      _wrongAnswers = $v.wrongAnswers.toBuilder();
      _goodAnswer = $v.goodAnswer;
      _categoryId = $v.categoryId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionInput;
  }

  @override
  void update(void Function(QuestionInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionInput build() => _build();

  _$QuestionInput _build() {
    _$QuestionInput _$result;
    try {
      _$result = _$v ??
          new _$QuestionInput._(
              question: BuiltValueNullFieldError.checkNotNull(
                  question, r'QuestionInput', 'question'),
              wrongAnswers: wrongAnswers.build(),
              goodAnswer: BuiltValueNullFieldError.checkNotNull(
                  goodAnswer, r'QuestionInput', 'goodAnswer'),
              categoryId: BuiltValueNullFieldError.checkNotNull(
                  categoryId, r'QuestionInput', 'categoryId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'wrongAnswers';
        wrongAnswers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QuestionInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
