# openapi.api.UserApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiUserGet**](UserApi.md#apiuserget) | **GET** /api/User | 
[**apiUserIdGet**](UserApi.md#apiuseridget) | **GET** /api/User/{id} | 
[**apiUserIdPut**](UserApi.md#apiuseridput) | **PUT** /api/User/{id} | 
[**apiUserPost**](UserApi.md#apiuserpost) | **POST** /api/User | 


# **apiUserGet**
> apiUserGet()



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();

try {
    api_instance.apiUserGet();
} catch (e) {
    print('Exception when calling UserApi->apiUserGet: $e\n');
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

# **apiUserIdGet**
> apiUserIdGet(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.apiUserIdGet(id);
} catch (e) {
    print('Exception when calling UserApi->apiUserIdGet: $e\n');
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

# **apiUserIdPut**
> apiUserIdPut(id, userEntity)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();
final id = id_example; // String | 
final userEntity = UserEntity(); // UserEntity | 

try {
    api_instance.apiUserIdPut(id, userEntity);
} catch (e) {
    print('Exception when calling UserApi->apiUserIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **userEntity** | [**UserEntity**](UserEntity.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUserPost**
> apiUserPost(createUserDto)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();
final createUserDto = CreateUserDto(); // CreateUserDto | 

try {
    api_instance.apiUserPost(createUserDto);
} catch (e) {
    print('Exception when calling UserApi->apiUserPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createUserDto** | [**CreateUserDto**](CreateUserDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

