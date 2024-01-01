//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateMovieDto {
  /// Returns a new [CreateMovieDto] instance.
  CreateMovieDto({
    this.name,
    this.description,
    this.url,
  });

  String? name;

  String? description;

  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateMovieDto &&
    other.name == name &&
    other.description == description &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'CreateMovieDto[name=$name, description=$description, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [CreateMovieDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateMovieDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateMovieDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateMovieDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateMovieDto(
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<CreateMovieDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateMovieDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateMovieDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateMovieDto> mapFromJson(dynamic json) {
    final map = <String, CreateMovieDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateMovieDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateMovieDto-objects as value to a dart map
  static Map<String, List<CreateMovieDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateMovieDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateMovieDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

