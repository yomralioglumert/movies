# openapi.api.MovieApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMovieGet**](MovieApi.md#apimovieget) | **GET** /api/Movie | 
[**apiMovieIdGet**](MovieApi.md#apimovieidget) | **GET** /api/Movie/{id} | 
[**apiMovieIdPut**](MovieApi.md#apimovieidput) | **PUT** /api/Movie/{id} | 
[**apiMoviePost**](MovieApi.md#apimoviepost) | **POST** /api/Movie | 


# **apiMovieGet**
> apiMovieGet()



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = MovieApi();

try {
    api_instance.apiMovieGet();
} catch (e) {
    print('Exception when calling MovieApi->apiMovieGet: $e\n');
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

# **apiMovieIdGet**
> apiMovieIdGet(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = MovieApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.apiMovieIdGet(id);
} catch (e) {
    print('Exception when calling MovieApi->apiMovieIdGet: $e\n');
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

# **apiMovieIdPut**
> apiMovieIdPut(id, movieEntity)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = MovieApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final movieEntity = MovieEntity(); // MovieEntity | 

try {
    api_instance.apiMovieIdPut(id, movieEntity);
} catch (e) {
    print('Exception when calling MovieApi->apiMovieIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **movieEntity** | [**MovieEntity**](MovieEntity.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMoviePost**
> apiMoviePost(createMovieDto)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = MovieApi();
final createMovieDto = CreateMovieDto(); // CreateMovieDto | 

try {
    api_instance.apiMoviePost(createMovieDto);
} catch (e) {
    print('Exception when calling MovieApi->apiMoviePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createMovieDto** | [**CreateMovieDto**](CreateMovieDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

