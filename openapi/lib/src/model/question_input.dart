//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'question_input.g.dart';

/// QuestionInput
///
/// Properties:
/// * [question] 
/// * [wrongAnswers] 
/// * [goodAnswer] 
/// * [categoryId] 
@BuiltValue()
abstract class QuestionInput implements Built<QuestionInput, QuestionInputBuilder> {
  @BuiltValueField(wireName: r'question')
  String get question;

  @BuiltValueField(wireName: r'wrongAnswers')
  BuiltList<String> get wrongAnswers;

  @BuiltValueField(wireName: r'goodAnswer')
  String get goodAnswer;

  @BuiltValueField(wireName: r'categoryId')
  String get categoryId;

  QuestionInput._();

  factory QuestionInput([void updates(QuestionInputBuilder b)]) = _$QuestionInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuestionInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuestionInput> get serializer => _$QuestionInputSerializer();
}

class _$QuestionInputSerializer implements PrimitiveSerializer<QuestionInput> {
  @override
  final Iterable<Type> types = const [QuestionInput, _$QuestionInput];

  @override
  final String wireName = r'QuestionInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuestionInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'question';
    yield serializers.serialize(
      object.question,
      specifiedType: const FullType(String),
    );
    yield r'wrongAnswers';
    yield serializers.serialize(
      object.wrongAnswers,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'goodAnswer';
    yield serializers.serialize(
      object.goodAnswer,
      specifiedType: const FullType(String),
    );
    yield r'categoryId';
    yield serializers.serialize(
      object.categoryId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    QuestionInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QuestionInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'question':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.question = valueDes;
          break;
        case r'wrongAnswers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.wrongAnswers.replace(valueDes);
          break;
        case r'goodAnswer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.goodAnswer = valueDes;
          break;
        case r'categoryId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.categoryId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuestionInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuestionInputBuilder();
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

