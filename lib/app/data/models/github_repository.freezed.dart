// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GitHubRepository _$GitHubRepositoryFromJson(Map<String, dynamic> json) {
  return _GitHubRepository.fromJson(json);
}

/// @nodoc
mixin _$GitHubRepository {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  bool? get private => throw _privateConstructorUsedError;
  Map<String, dynamic>? get owner => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String? get htmlUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get fork => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'pushed_at')
  String? get pushedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'git_url')
  String? get gitUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'ssh_url')
  String? get sshUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'clone_url')
  String? get cloneUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'svn_url')
  String? get svnUrl => throw _privateConstructorUsedError;
  String? get homepage => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int? get stargazersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'watchers_count')
  int? get watchersCount => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_issues')
  bool? get hasIssues => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_projects')
  bool? get hasProjects => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_downloads')
  bool? get hasDownloads => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_wiki')
  bool? get hasWiki => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_pages')
  bool? get hasPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'forks_count')
  int? get forksCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'open_issues_count')
  int? get openIssuesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_branch')
  String? get defaultBranch => throw _privateConstructorUsedError;
  @JsonKey(name: 'topics')
  List<String>? get topics => throw _privateConstructorUsedError;

  /// Serializes this GitHubRepository to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GitHubRepository
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GitHubRepositoryCopyWith<GitHubRepository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubRepositoryCopyWith<$Res> {
  factory $GitHubRepositoryCopyWith(
          GitHubRepository value, $Res Function(GitHubRepository) then) =
      _$GitHubRepositoryCopyWithImpl<$Res, GitHubRepository>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'full_name') String? fullName,
      bool? private,
      Map<String, dynamic>? owner,
      @JsonKey(name: 'html_url') String? htmlUrl,
      String? description,
      bool? fork,
      String? url,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'pushed_at') String? pushedAt,
      @JsonKey(name: 'git_url') String? gitUrl,
      @JsonKey(name: 'ssh_url') String? sshUrl,
      @JsonKey(name: 'clone_url') String? cloneUrl,
      @JsonKey(name: 'svn_url') String? svnUrl,
      String? homepage,
      int? size,
      @JsonKey(name: 'stargazers_count') int? stargazersCount,
      @JsonKey(name: 'watchers_count') int? watchersCount,
      String? language,
      @JsonKey(name: 'has_issues') bool? hasIssues,
      @JsonKey(name: 'has_projects') bool? hasProjects,
      @JsonKey(name: 'has_downloads') bool? hasDownloads,
      @JsonKey(name: 'has_wiki') bool? hasWiki,
      @JsonKey(name: 'has_pages') bool? hasPages,
      @JsonKey(name: 'forks_count') int? forksCount,
      @JsonKey(name: 'open_issues_count') int? openIssuesCount,
      @JsonKey(name: 'default_branch') String? defaultBranch,
      @JsonKey(name: 'topics') List<String>? topics});
}

/// @nodoc
class _$GitHubRepositoryCopyWithImpl<$Res, $Val extends GitHubRepository>
    implements $GitHubRepositoryCopyWith<$Res> {
  _$GitHubRepositoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GitHubRepository
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? fullName = freezed,
    Object? private = freezed,
    Object? owner = freezed,
    Object? htmlUrl = freezed,
    Object? description = freezed,
    Object? fork = freezed,
    Object? url = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? pushedAt = freezed,
    Object? gitUrl = freezed,
    Object? sshUrl = freezed,
    Object? cloneUrl = freezed,
    Object? svnUrl = freezed,
    Object? homepage = freezed,
    Object? size = freezed,
    Object? stargazersCount = freezed,
    Object? watchersCount = freezed,
    Object? language = freezed,
    Object? hasIssues = freezed,
    Object? hasProjects = freezed,
    Object? hasDownloads = freezed,
    Object? hasWiki = freezed,
    Object? hasPages = freezed,
    Object? forksCount = freezed,
    Object? openIssuesCount = freezed,
    Object? defaultBranch = freezed,
    Object? topics = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      private: freezed == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      fork: freezed == fork
          ? _value.fork
          : fork // ignore: cast_nullable_to_non_nullable
              as bool?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      pushedAt: freezed == pushedAt
          ? _value.pushedAt
          : pushedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      gitUrl: freezed == gitUrl
          ? _value.gitUrl
          : gitUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sshUrl: freezed == sshUrl
          ? _value.sshUrl
          : sshUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      cloneUrl: freezed == cloneUrl
          ? _value.cloneUrl
          : cloneUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      svnUrl: freezed == svnUrl
          ? _value.svnUrl
          : svnUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      homepage: freezed == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      stargazersCount: freezed == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      watchersCount: freezed == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      hasIssues: freezed == hasIssues
          ? _value.hasIssues
          : hasIssues // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasProjects: freezed == hasProjects
          ? _value.hasProjects
          : hasProjects // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasDownloads: freezed == hasDownloads
          ? _value.hasDownloads
          : hasDownloads // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasWiki: freezed == hasWiki
          ? _value.hasWiki
          : hasWiki // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasPages: freezed == hasPages
          ? _value.hasPages
          : hasPages // ignore: cast_nullable_to_non_nullable
              as bool?,
      forksCount: freezed == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      openIssuesCount: freezed == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      defaultBranch: freezed == defaultBranch
          ? _value.defaultBranch
          : defaultBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GitHubRepositoryImplCopyWith<$Res>
    implements $GitHubRepositoryCopyWith<$Res> {
  factory _$$GitHubRepositoryImplCopyWith(_$GitHubRepositoryImpl value,
          $Res Function(_$GitHubRepositoryImpl) then) =
      __$$GitHubRepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'full_name') String? fullName,
      bool? private,
      Map<String, dynamic>? owner,
      @JsonKey(name: 'html_url') String? htmlUrl,
      String? description,
      bool? fork,
      String? url,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'pushed_at') String? pushedAt,
      @JsonKey(name: 'git_url') String? gitUrl,
      @JsonKey(name: 'ssh_url') String? sshUrl,
      @JsonKey(name: 'clone_url') String? cloneUrl,
      @JsonKey(name: 'svn_url') String? svnUrl,
      String? homepage,
      int? size,
      @JsonKey(name: 'stargazers_count') int? stargazersCount,
      @JsonKey(name: 'watchers_count') int? watchersCount,
      String? language,
      @JsonKey(name: 'has_issues') bool? hasIssues,
      @JsonKey(name: 'has_projects') bool? hasProjects,
      @JsonKey(name: 'has_downloads') bool? hasDownloads,
      @JsonKey(name: 'has_wiki') bool? hasWiki,
      @JsonKey(name: 'has_pages') bool? hasPages,
      @JsonKey(name: 'forks_count') int? forksCount,
      @JsonKey(name: 'open_issues_count') int? openIssuesCount,
      @JsonKey(name: 'default_branch') String? defaultBranch,
      @JsonKey(name: 'topics') List<String>? topics});
}

/// @nodoc
class __$$GitHubRepositoryImplCopyWithImpl<$Res>
    extends _$GitHubRepositoryCopyWithImpl<$Res, _$GitHubRepositoryImpl>
    implements _$$GitHubRepositoryImplCopyWith<$Res> {
  __$$GitHubRepositoryImplCopyWithImpl(_$GitHubRepositoryImpl _value,
      $Res Function(_$GitHubRepositoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of GitHubRepository
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? fullName = freezed,
    Object? private = freezed,
    Object? owner = freezed,
    Object? htmlUrl = freezed,
    Object? description = freezed,
    Object? fork = freezed,
    Object? url = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? pushedAt = freezed,
    Object? gitUrl = freezed,
    Object? sshUrl = freezed,
    Object? cloneUrl = freezed,
    Object? svnUrl = freezed,
    Object? homepage = freezed,
    Object? size = freezed,
    Object? stargazersCount = freezed,
    Object? watchersCount = freezed,
    Object? language = freezed,
    Object? hasIssues = freezed,
    Object? hasProjects = freezed,
    Object? hasDownloads = freezed,
    Object? hasWiki = freezed,
    Object? hasPages = freezed,
    Object? forksCount = freezed,
    Object? openIssuesCount = freezed,
    Object? defaultBranch = freezed,
    Object? topics = freezed,
  }) {
    return _then(_$GitHubRepositoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      private: freezed == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool?,
      owner: freezed == owner
          ? _value._owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      fork: freezed == fork
          ? _value.fork
          : fork // ignore: cast_nullable_to_non_nullable
              as bool?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      pushedAt: freezed == pushedAt
          ? _value.pushedAt
          : pushedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      gitUrl: freezed == gitUrl
          ? _value.gitUrl
          : gitUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sshUrl: freezed == sshUrl
          ? _value.sshUrl
          : sshUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      cloneUrl: freezed == cloneUrl
          ? _value.cloneUrl
          : cloneUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      svnUrl: freezed == svnUrl
          ? _value.svnUrl
          : svnUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      homepage: freezed == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      stargazersCount: freezed == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      watchersCount: freezed == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      hasIssues: freezed == hasIssues
          ? _value.hasIssues
          : hasIssues // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasProjects: freezed == hasProjects
          ? _value.hasProjects
          : hasProjects // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasDownloads: freezed == hasDownloads
          ? _value.hasDownloads
          : hasDownloads // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasWiki: freezed == hasWiki
          ? _value.hasWiki
          : hasWiki // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasPages: freezed == hasPages
          ? _value.hasPages
          : hasPages // ignore: cast_nullable_to_non_nullable
              as bool?,
      forksCount: freezed == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      openIssuesCount: freezed == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      defaultBranch: freezed == defaultBranch
          ? _value.defaultBranch
          : defaultBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      topics: freezed == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitHubRepositoryImpl implements _GitHubRepository {
  const _$GitHubRepositoryImpl(
      {this.id,
      this.name,
      @JsonKey(name: 'full_name') this.fullName,
      this.private,
      final Map<String, dynamic>? owner,
      @JsonKey(name: 'html_url') this.htmlUrl,
      this.description,
      this.fork,
      this.url,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'pushed_at') this.pushedAt,
      @JsonKey(name: 'git_url') this.gitUrl,
      @JsonKey(name: 'ssh_url') this.sshUrl,
      @JsonKey(name: 'clone_url') this.cloneUrl,
      @JsonKey(name: 'svn_url') this.svnUrl,
      this.homepage,
      this.size,
      @JsonKey(name: 'stargazers_count') this.stargazersCount,
      @JsonKey(name: 'watchers_count') this.watchersCount,
      this.language,
      @JsonKey(name: 'has_issues') this.hasIssues,
      @JsonKey(name: 'has_projects') this.hasProjects,
      @JsonKey(name: 'has_downloads') this.hasDownloads,
      @JsonKey(name: 'has_wiki') this.hasWiki,
      @JsonKey(name: 'has_pages') this.hasPages,
      @JsonKey(name: 'forks_count') this.forksCount,
      @JsonKey(name: 'open_issues_count') this.openIssuesCount,
      @JsonKey(name: 'default_branch') this.defaultBranch,
      @JsonKey(name: 'topics') final List<String>? topics})
      : _owner = owner,
        _topics = topics;

  factory _$GitHubRepositoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitHubRepositoryImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  final bool? private;
  final Map<String, dynamic>? _owner;
  @override
  Map<String, dynamic>? get owner {
    final value = _owner;
    if (value == null) return null;
    if (_owner is EqualUnmodifiableMapView) return _owner;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'html_url')
  final String? htmlUrl;
  @override
  final String? description;
  @override
  final bool? fork;
  @override
  final String? url;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'pushed_at')
  final String? pushedAt;
  @override
  @JsonKey(name: 'git_url')
  final String? gitUrl;
  @override
  @JsonKey(name: 'ssh_url')
  final String? sshUrl;
  @override
  @JsonKey(name: 'clone_url')
  final String? cloneUrl;
  @override
  @JsonKey(name: 'svn_url')
  final String? svnUrl;
  @override
  final String? homepage;
  @override
  final int? size;
  @override
  @JsonKey(name: 'stargazers_count')
  final int? stargazersCount;
  @override
  @JsonKey(name: 'watchers_count')
  final int? watchersCount;
  @override
  final String? language;
  @override
  @JsonKey(name: 'has_issues')
  final bool? hasIssues;
  @override
  @JsonKey(name: 'has_projects')
  final bool? hasProjects;
  @override
  @JsonKey(name: 'has_downloads')
  final bool? hasDownloads;
  @override
  @JsonKey(name: 'has_wiki')
  final bool? hasWiki;
  @override
  @JsonKey(name: 'has_pages')
  final bool? hasPages;
  @override
  @JsonKey(name: 'forks_count')
  final int? forksCount;
  @override
  @JsonKey(name: 'open_issues_count')
  final int? openIssuesCount;
  @override
  @JsonKey(name: 'default_branch')
  final String? defaultBranch;
  final List<String>? _topics;
  @override
  @JsonKey(name: 'topics')
  List<String>? get topics {
    final value = _topics;
    if (value == null) return null;
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GitHubRepository(id: $id, name: $name, fullName: $fullName, private: $private, owner: $owner, htmlUrl: $htmlUrl, description: $description, fork: $fork, url: $url, createdAt: $createdAt, updatedAt: $updatedAt, pushedAt: $pushedAt, gitUrl: $gitUrl, sshUrl: $sshUrl, cloneUrl: $cloneUrl, svnUrl: $svnUrl, homepage: $homepage, size: $size, stargazersCount: $stargazersCount, watchersCount: $watchersCount, language: $language, hasIssues: $hasIssues, hasProjects: $hasProjects, hasDownloads: $hasDownloads, hasWiki: $hasWiki, hasPages: $hasPages, forksCount: $forksCount, openIssuesCount: $openIssuesCount, defaultBranch: $defaultBranch, topics: $topics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitHubRepositoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.private, private) || other.private == private) &&
            const DeepCollectionEquality().equals(other._owner, _owner) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.fork, fork) || other.fork == fork) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.pushedAt, pushedAt) ||
                other.pushedAt == pushedAt) &&
            (identical(other.gitUrl, gitUrl) || other.gitUrl == gitUrl) &&
            (identical(other.sshUrl, sshUrl) || other.sshUrl == sshUrl) &&
            (identical(other.cloneUrl, cloneUrl) ||
                other.cloneUrl == cloneUrl) &&
            (identical(other.svnUrl, svnUrl) || other.svnUrl == svnUrl) &&
            (identical(other.homepage, homepage) ||
                other.homepage == homepage) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount) &&
            (identical(other.watchersCount, watchersCount) ||
                other.watchersCount == watchersCount) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.hasIssues, hasIssues) ||
                other.hasIssues == hasIssues) &&
            (identical(other.hasProjects, hasProjects) ||
                other.hasProjects == hasProjects) &&
            (identical(other.hasDownloads, hasDownloads) ||
                other.hasDownloads == hasDownloads) &&
            (identical(other.hasWiki, hasWiki) || other.hasWiki == hasWiki) &&
            (identical(other.hasPages, hasPages) ||
                other.hasPages == hasPages) &&
            (identical(other.forksCount, forksCount) ||
                other.forksCount == forksCount) &&
            (identical(other.openIssuesCount, openIssuesCount) ||
                other.openIssuesCount == openIssuesCount) &&
            (identical(other.defaultBranch, defaultBranch) ||
                other.defaultBranch == defaultBranch) &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        fullName,
        private,
        const DeepCollectionEquality().hash(_owner),
        htmlUrl,
        description,
        fork,
        url,
        createdAt,
        updatedAt,
        pushedAt,
        gitUrl,
        sshUrl,
        cloneUrl,
        svnUrl,
        homepage,
        size,
        stargazersCount,
        watchersCount,
        language,
        hasIssues,
        hasProjects,
        hasDownloads,
        hasWiki,
        hasPages,
        forksCount,
        openIssuesCount,
        defaultBranch,
        const DeepCollectionEquality().hash(_topics)
      ]);

  /// Create a copy of GitHubRepository
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GitHubRepositoryImplCopyWith<_$GitHubRepositoryImpl> get copyWith =>
      __$$GitHubRepositoryImplCopyWithImpl<_$GitHubRepositoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitHubRepositoryImplToJson(
      this,
    );
  }
}

abstract class _GitHubRepository implements GitHubRepository {
  const factory _GitHubRepository(
          {final int? id,
          final String? name,
          @JsonKey(name: 'full_name') final String? fullName,
          final bool? private,
          final Map<String, dynamic>? owner,
          @JsonKey(name: 'html_url') final String? htmlUrl,
          final String? description,
          final bool? fork,
          final String? url,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt,
          @JsonKey(name: 'pushed_at') final String? pushedAt,
          @JsonKey(name: 'git_url') final String? gitUrl,
          @JsonKey(name: 'ssh_url') final String? sshUrl,
          @JsonKey(name: 'clone_url') final String? cloneUrl,
          @JsonKey(name: 'svn_url') final String? svnUrl,
          final String? homepage,
          final int? size,
          @JsonKey(name: 'stargazers_count') final int? stargazersCount,
          @JsonKey(name: 'watchers_count') final int? watchersCount,
          final String? language,
          @JsonKey(name: 'has_issues') final bool? hasIssues,
          @JsonKey(name: 'has_projects') final bool? hasProjects,
          @JsonKey(name: 'has_downloads') final bool? hasDownloads,
          @JsonKey(name: 'has_wiki') final bool? hasWiki,
          @JsonKey(name: 'has_pages') final bool? hasPages,
          @JsonKey(name: 'forks_count') final int? forksCount,
          @JsonKey(name: 'open_issues_count') final int? openIssuesCount,
          @JsonKey(name: 'default_branch') final String? defaultBranch,
          @JsonKey(name: 'topics') final List<String>? topics}) =
      _$GitHubRepositoryImpl;

  factory _GitHubRepository.fromJson(Map<String, dynamic> json) =
      _$GitHubRepositoryImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  bool? get private;
  @override
  Map<String, dynamic>? get owner;
  @override
  @JsonKey(name: 'html_url')
  String? get htmlUrl;
  @override
  String? get description;
  @override
  bool? get fork;
  @override
  String? get url;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'pushed_at')
  String? get pushedAt;
  @override
  @JsonKey(name: 'git_url')
  String? get gitUrl;
  @override
  @JsonKey(name: 'ssh_url')
  String? get sshUrl;
  @override
  @JsonKey(name: 'clone_url')
  String? get cloneUrl;
  @override
  @JsonKey(name: 'svn_url')
  String? get svnUrl;
  @override
  String? get homepage;
  @override
  int? get size;
  @override
  @JsonKey(name: 'stargazers_count')
  int? get stargazersCount;
  @override
  @JsonKey(name: 'watchers_count')
  int? get watchersCount;
  @override
  String? get language;
  @override
  @JsonKey(name: 'has_issues')
  bool? get hasIssues;
  @override
  @JsonKey(name: 'has_projects')
  bool? get hasProjects;
  @override
  @JsonKey(name: 'has_downloads')
  bool? get hasDownloads;
  @override
  @JsonKey(name: 'has_wiki')
  bool? get hasWiki;
  @override
  @JsonKey(name: 'has_pages')
  bool? get hasPages;
  @override
  @JsonKey(name: 'forks_count')
  int? get forksCount;
  @override
  @JsonKey(name: 'open_issues_count')
  int? get openIssuesCount;
  @override
  @JsonKey(name: 'default_branch')
  String? get defaultBranch;
  @override
  @JsonKey(name: 'topics')
  List<String>? get topics;

  /// Create a copy of GitHubRepository
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GitHubRepositoryImplCopyWith<_$GitHubRepositoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
