# openapi.api.CommendApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiCommendGet**](CommendApi.md#apicommendget) | **GET** /api/Commend | 
[**apiCommendIdGet**](CommendApi.md#apicommendidget) | **GET** /api/Commend/{id} | 
[**apiCommendPost**](CommendApi.md#apicommendpost) | **POST** /api/Commend | 


# **apiCommendGet**
> apiCommendGet()



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CommendApi();

try {
    api_instance.apiCommendGet();
} catch (e) {
    print('Exception when calling CommendApi->apiCommendGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCommendIdGet**
> apiCommendIdGet(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CommendApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.apiCommendIdGet(id);
} catch (e) {
    print('Exception when calling CommendApi->apiCommendIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiCommendPost**
> apiCommendPost(createCommendDto)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CommendApi();
final createCommendDto = CreateCommendDto(); // CreateCommendDto | 

try {
    api_instance.apiCommendPost(createCommendDto);
} catch (e) {
    print('Exception when calling CommendApi->apiCommendPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createCommendDto** | [**CreateCommendDto**](CreateCommendDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

