// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Question extends Question {
  @override
  final String id;
  @override
  final String question;
  @override
  final String answerId;
  @override
  final BuiltList<Option> options;

  factory _$Question([void Function(QuestionBuilder)? updates]) =>
      (new QuestionBuilder()..update(updates))._build();

  _$Question._(
      {required this.id,
      required this.question,
      required this.answerId,
      required this.options})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Question', 'id');
    BuiltValueNullFieldError.checkNotNull(question, r'Question', 'question');
    BuiltValueNullFieldError.checkNotNull(answerId, r'Question', 'answerId');
    BuiltValueNullFieldError.checkNotNull(options, r'Question', 'options');
  }

  @override
  Question rebuild(void Function(QuestionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionBuilder toBuilder() => new QuestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Question &&
        id == other.id &&
        question == other.question &&
        answerId == other.answerId &&
        options == other.options;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, question.hashCode);
    _$hash = $jc(_$hash, answerId.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Question')
          ..add('id', id)
          ..add('question', question)
          ..add('answerId', answerId)
          ..add('options', options))
        .toString();
  }
}

class QuestionBuilder implements Builder<Question, QuestionBuilder> {
  _$Question? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  String? _answerId;
  String? get answerId => _$this._answerId;
  set answerId(String? answerId) => _$this._answerId = answerId;

  ListBuilder<Option>? _options;
  ListBuilder<Option> get options =>
      _$this._options ??= new ListBuilder<Option>();
  set options(ListBuilder<Option>? options) => _$this._options = options;

  QuestionBuilder() {
    Question._defaults(this);
  }

  QuestionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _question = $v.question;
      _answerId = $v.answerId;
      _options = $v.options.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Question other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Question;
  }

  @override
  void update(void Function(QuestionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Question build() => _build();

  _$Question _build() {
    _$Question _$result;
    try {
      _$result = _$v ??
          new _$Question._(
              id: BuiltValueNullFieldError.checkNotNull(id, r'Question', 'id'),
              question: BuiltValueNullFieldError.checkNotNull(
                  question, r'Question', 'question'),
              answerId: BuiltValueNullFieldError.checkNotNull(
                  answerId, r'Question', 'answerId'),
              options: options.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        options.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Question', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
