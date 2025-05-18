// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GitHubUser _$GitHubUserFromJson(Map<String, dynamic> json) {
  return _GitHubUser.fromJson(json);
}

/// @nodoc
mixin _$GitHubUser {
  String? get login => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  String? get blog => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(name: 'twitter_username')
  String? get twitterUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'public_repos')
  int? get publicRepos => throw _privateConstructorUsedError;
  @JsonKey(name: 'public_gists')
  int? get publicGists => throw _privateConstructorUsedError;
  int? get followers => throw _privateConstructorUsedError;
  int? get following => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this GitHubUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GitHubUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GitHubUserCopyWith<GitHubUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubUserCopyWith<$Res> {
  factory $GitHubUserCopyWith(
          GitHubUser value, $Res Function(GitHubUser) then) =
      _$GitHubUserCopyWithImpl<$Res, GitHubUser>;
  @useResult
  $Res call(
      {String? login,
      int? id,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      String? name,
      String? company,
      String? blog,
      String? location,
      String? email,
      String? bio,
      @JsonKey(name: 'twitter_username') String? twitterUsername,
      @JsonKey(name: 'public_repos') int? publicRepos,
      @JsonKey(name: 'public_gists') int? publicGists,
      int? followers,
      int? following,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$GitHubUserCopyWithImpl<$Res, $Val extends GitHubUser>
    implements $GitHubUserCopyWith<$Res> {
  _$GitHubUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GitHubUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = freezed,
    Object? id = freezed,
    Object? avatarUrl = freezed,
    Object? name = freezed,
    Object? company = freezed,
    Object? blog = freezed,
    Object? location = freezed,
    Object? email = freezed,
    Object? bio = freezed,
    Object? twitterUsername = freezed,
    Object? publicRepos = freezed,
    Object? publicGists = freezed,
    Object? followers = freezed,
    Object? following = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      blog: freezed == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUsername: freezed == twitterUsername
          ? _value.twitterUsername
          : twitterUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      publicRepos: freezed == publicRepos
          ? _value.publicRepos
          : publicRepos // ignore: cast_nullable_to_non_nullable
              as int?,
      publicGists: freezed == publicGists
          ? _value.publicGists
          : publicGists // ignore: cast_nullable_to_non_nullable
              as int?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GitHubUserImplCopyWith<$Res>
    implements $GitHubUserCopyWith<$Res> {
  factory _$$GitHubUserImplCopyWith(
          _$GitHubUserImpl value, $Res Function(_$GitHubUserImpl) then) =
      __$$GitHubUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? login,
      int? id,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      String? name,
      String? company,
      String? blog,
      String? location,
      String? email,
      String? bio,
      @JsonKey(name: 'twitter_username') String? twitterUsername,
      @JsonKey(name: 'public_repos') int? publicRepos,
      @JsonKey(name: 'public_gists') int? publicGists,
      int? followers,
      int? following,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$GitHubUserImplCopyWithImpl<$Res>
    extends _$GitHubUserCopyWithImpl<$Res, _$GitHubUserImpl>
    implements _$$GitHubUserImplCopyWith<$Res> {
  __$$GitHubUserImplCopyWithImpl(
      _$GitHubUserImpl _value, $Res Function(_$GitHubUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of GitHubUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = freezed,
    Object? id = freezed,
    Object? avatarUrl = freezed,
    Object? name = freezed,
    Object? company = freezed,
    Object? blog = freezed,
    Object? location = freezed,
    Object? email = freezed,
    Object? bio = freezed,
    Object? twitterUsername = freezed,
    Object? publicRepos = freezed,
    Object? publicGists = freezed,
    Object? followers = freezed,
    Object? following = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$GitHubUserImpl(
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      blog: freezed == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUsername: freezed == twitterUsername
          ? _value.twitterUsername
          : twitterUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      publicRepos: freezed == publicRepos
          ? _value.publicRepos
          : publicRepos // ignore: cast_nullable_to_non_nullable
              as int?,
      publicGists: freezed == publicGists
          ? _value.publicGists
          : publicGists // ignore: cast_nullable_to_non_nullable
              as int?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitHubUserImpl implements _GitHubUser {
  const _$GitHubUserImpl(
      {this.login,
      this.id,
      @JsonKey(name: 'avatar_url') this.avatarUrl,
      this.name,
      this.company,
      this.blog,
      this.location,
      this.email,
      this.bio,
      @JsonKey(name: 'twitter_username') this.twitterUsername,
      @JsonKey(name: 'public_repos') this.publicRepos,
      @JsonKey(name: 'public_gists') this.publicGists,
      this.followers,
      this.following,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$GitHubUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitHubUserImplFromJson(json);

  @override
  final String? login;
  @override
  final int? id;
  @override
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;
  @override
  final String? name;
  @override
  final String? company;
  @override
  final String? blog;
  @override
  final String? location;
  @override
  final String? email;
  @override
  final String? bio;
  @override
  @JsonKey(name: 'twitter_username')
  final String? twitterUsername;
  @override
  @JsonKey(name: 'public_repos')
  final int? publicRepos;
  @override
  @JsonKey(name: 'public_gists')
  final int? publicGists;
  @override
  final int? followers;
  @override
  final int? following;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'GitHubUser(login: $login, id: $id, avatarUrl: $avatarUrl, name: $name, company: $company, blog: $blog, location: $location, email: $email, bio: $bio, twitterUsername: $twitterUsername, publicRepos: $publicRepos, publicGists: $publicGists, followers: $followers, following: $following, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitHubUserImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.blog, blog) || other.blog == blog) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.twitterUsername, twitterUsername) ||
                other.twitterUsername == twitterUsername) &&
            (identical(other.publicRepos, publicRepos) ||
                other.publicRepos == publicRepos) &&
            (identical(other.publicGists, publicGists) ||
                other.publicGists == publicGists) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.following, following) ||
                other.following == following) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      login,
      id,
      avatarUrl,
      name,
      company,
      blog,
      location,
      email,
      bio,
      twitterUsername,
      publicRepos,
      publicGists,
      followers,
      following,
      createdAt,
      updatedAt);

  /// Create a copy of GitHubUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GitHubUserImplCopyWith<_$GitHubUserImpl> get copyWith =>
      __$$GitHubUserImplCopyWithImpl<_$GitHubUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitHubUserImplToJson(
      this,
    );
  }
}

abstract class _GitHubUser implements GitHubUser {
  const factory _GitHubUser(
      {final String? login,
      final int? id,
      @JsonKey(name: 'avatar_url') final String? avatarUrl,
      final String? name,
      final String? company,
      final String? blog,
      final String? location,
      final String? email,
      final String? bio,
      @JsonKey(name: 'twitter_username') final String? twitterUsername,
      @JsonKey(name: 'public_repos') final int? publicRepos,
      @JsonKey(name: 'public_gists') final int? publicGists,
      final int? followers,
      final int? following,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt}) = _$GitHubUserImpl;

  factory _GitHubUser.fromJson(Map<String, dynamic> json) =
      _$GitHubUserImpl.fromJson;

  @override
  String? get login;
  @override
  int? get id;
  @override
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl;
  @override
  String? get name;
  @override
  String? get company;
  @override
  String? get blog;
  @override
  String? get location;
  @override
  String? get email;
  @override
  String? get bio;
  @override
  @JsonKey(name: 'twitter_username')
  String? get twitterUsername;
  @override
  @JsonKey(name: 'public_repos')
  int? get publicRepos;
  @override
  @JsonKey(name: 'public_gists')
  int? get publicGists;
  @override
  int? get followers;
  @override
  int? get following;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of GitHubUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GitHubUserImplCopyWith<_$GitHubUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
