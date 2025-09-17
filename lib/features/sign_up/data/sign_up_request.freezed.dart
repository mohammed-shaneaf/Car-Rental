// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpRequestBody _$SignUpRequestBodyFromJson(Map<String, dynamic> json) {
  return _SignUpRequestBody.fromJson(json);
}

/// @nodoc
mixin _$SignUpRequestBody {
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpRequestBodyCopyWith<SignUpRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpRequestBodyCopyWith<$Res> {
  factory $SignUpRequestBodyCopyWith(
          SignUpRequestBody value, $Res Function(SignUpRequestBody) then) =
      _$SignUpRequestBodyCopyWithImpl<$Res, SignUpRequestBody>;
  @useResult
  $Res call({String username, String email, String password, String country});
}

/// @nodoc
class _$SignUpRequestBodyCopyWithImpl<$Res, $Val extends SignUpRequestBody>
    implements $SignUpRequestBodyCopyWith<$Res> {
  _$SignUpRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? password = null,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpRequestBodyImplCopyWith<$Res>
    implements $SignUpRequestBodyCopyWith<$Res> {
  factory _$$SignUpRequestBodyImplCopyWith(_$SignUpRequestBodyImpl value,
          $Res Function(_$SignUpRequestBodyImpl) then) =
      __$$SignUpRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String email, String password, String country});
}

/// @nodoc
class __$$SignUpRequestBodyImplCopyWithImpl<$Res>
    extends _$SignUpRequestBodyCopyWithImpl<$Res, _$SignUpRequestBodyImpl>
    implements _$$SignUpRequestBodyImplCopyWith<$Res> {
  __$$SignUpRequestBodyImplCopyWithImpl(_$SignUpRequestBodyImpl _value,
      $Res Function(_$SignUpRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? password = null,
    Object? country = null,
  }) {
    return _then(_$SignUpRequestBodyImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpRequestBodyImpl implements _SignUpRequestBody {
  const _$SignUpRequestBodyImpl(
      {required this.username,
      required this.email,
      required this.password,
      required this.country});

  factory _$SignUpRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpRequestBodyImplFromJson(json);

  @override
  final String username;
  @override
  final String email;
  @override
  final String password;
  @override
  final String country;

  @override
  String toString() {
    return 'SignUpRequestBody(username: $username, email: $email, password: $password, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpRequestBodyImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, username, email, password, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpRequestBodyImplCopyWith<_$SignUpRequestBodyImpl> get copyWith =>
      __$$SignUpRequestBodyImplCopyWithImpl<_$SignUpRequestBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _SignUpRequestBody implements SignUpRequestBody {
  const factory _SignUpRequestBody(
      {required final String username,
      required final String email,
      required final String password,
      required final String country}) = _$SignUpRequestBodyImpl;

  factory _SignUpRequestBody.fromJson(Map<String, dynamic> json) =
      _$SignUpRequestBodyImpl.fromJson;

  @override
  String get username;
  @override
  String get email;
  @override
  String get password;
  @override
  String get country;
  @override
  @JsonKey(ignore: true)
  _$$SignUpRequestBodyImplCopyWith<_$SignUpRequestBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
