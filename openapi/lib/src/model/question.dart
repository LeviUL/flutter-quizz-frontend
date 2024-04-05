//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/option.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'question.g.dart';

/// Question
///
/// Properties:
/// * [id] 
/// * [question] 
/// * [answerId] 
/// * [options] 
@BuiltValue()
abstract class Question implements Built<Question, QuestionBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'question')
  String get question;

  @BuiltValueField(wireName: r'answerId')
  String get answerId;

  @BuiltValueField(wireName: r'options')
  BuiltList<Option> get options;

  Question._();

  factory Question([void updates(QuestionBuilder b)]) = _$Question;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuestionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Question> get serializer => _$QuestionSerializer();
}

class _$QuestionSerializer implements PrimitiveSerializer<Question> {
  @override
  final Iterable<Type> types = const [Question, _$Question];

  @override
  final String wireName = r'Question';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Question object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'question';
    yield serializers.serialize(
      object.question,
      specifiedType: const FullType(String),
    );
    yield r'answerId';
    yield serializers.serialize(
      object.answerId,
      specifiedType: const FullType(String),
    );
    yield r'options';
    yield serializers.serialize(
      object.options,
      specifiedType: const FullType(BuiltList, [FullType(Option)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Question object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QuestionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'question':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.question = valueDes;
          break;
        case r'answerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.answerId = valueDes;
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Option)]),
          ) as BuiltList<Option>;
          result.options.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Question deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuestionBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

