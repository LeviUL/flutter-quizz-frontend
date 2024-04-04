# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**questionsGet**](DefaultApi.md#questionsget) | **GET** /questions | Get all questions
[**questionsPost**](DefaultApi.md#questionspost) | **POST** /questions | Create a new question


# **questionsGet**
> BuiltList<Question> questionsGet()

Get all questions

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.questionsGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->questionsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

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

