# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**categoriesGet**](DefaultApi.md#categoriesget) | **GET** /categories | Get all categories
[**categoriesPost**](DefaultApi.md#categoriespost) | **POST** /categories | Create a new category
[**questionsGet**](DefaultApi.md#questionsget) | **GET** /questions | Get all questions
[**questionsPost**](DefaultApi.md#questionspost) | **POST** /questions | Create a new question


# **categoriesGet**
> BuiltList<Category> categoriesGet()

Get all categories

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.categoriesGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->categoriesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;Category&gt;**](Category.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoriesPost**
> Question categoriesPost(questionInput)

Create a new category

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final QuestionInput questionInput = ; // QuestionInput | 

try {
    final response = api.categoriesPost(questionInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->categoriesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **questionInput** | [**QuestionInput**](QuestionInput.md)|  | 

### Return type

[**Question**](Question.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **questionsGet**
> BuiltList<Question> questionsGet(categoryId)

Get all questions

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String categoryId = categoryId_example; // String | ID of the category to filter questions

try {
    final response = api.questionsGet(categoryId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->questionsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **String**| ID of the category to filter questions | [optional] 

### Return type

[**BuiltList&lt;Question&gt;**](Question.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **questionsPost**
> Question questionsPost(questionInput)

Create a new question

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final QuestionInput questionInput = ; // QuestionInput | 

try {
    final response = api.questionsPost(questionInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->questionsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **questionInput** | [**QuestionInput**](QuestionInput.md)|  | 

### Return type

[**Question**](Question.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

