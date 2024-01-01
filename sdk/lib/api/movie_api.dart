//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MovieApi {
  MovieApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /api/Movie' operation and returns the [Response].
  Future<Response> apiMovieGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/Movie';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  Future<void> apiMovieGet() async {
    final response = await apiMovieGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/Movie/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> apiMovieIdGetWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/Movie/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> apiMovieIdGet(String id,) async {
    final response = await apiMovieIdGetWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PUT /api/Movie/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [MovieEntity] movieEntity:
  Future<Response> apiMovieIdPutWithHttpInfo(String id, { MovieEntity? movieEntity, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/Movie/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = movieEntity;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'text/json', 'application/*+json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [MovieEntity] movieEntity:
  Future<void> apiMovieIdPut(String id, { MovieEntity? movieEntity, }) async {
    final response = await apiMovieIdPutWithHttpInfo(id,  movieEntity: movieEntity, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /api/Movie' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [CreateMovieDto] createMovieDto:
  Future<Response> apiMoviePostWithHttpInfo({ CreateMovieDto? createMovieDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/Movie';

    // ignore: prefer_final_locals
    Object? postBody = createMovieDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'text/json', 'application/*+json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [CreateMovieDto] createMovieDto:
  Future<void> apiMoviePost({ CreateMovieDto? createMovieDto, }) async {
    final response = await apiMoviePostWithHttpInfo( createMovieDto: createMovieDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
