//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/category.dart';
import 'package:openapi/src/model/category_input.dart';
import 'package:openapi/src/model/option.dart';
import 'package:openapi/src/model/question.dart';
import 'package:openapi/src/model/question_input.dart';

part 'serializers.g.dart';

@SerializersFor([
  Category,
  CategoryInput,
  Option,
  Question,
  QuestionInput,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Question)]),
        () => ListBuilder<Question>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Category)]),
        () => ListBuilder<Category>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
