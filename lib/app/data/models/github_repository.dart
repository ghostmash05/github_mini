import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_repository.freezed.dart';
part 'github_repository.g.dart';

@freezed
class GitHubRepository with _$GitHubRepository {
  const factory GitHubRepository({
    int? id,
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
    @JsonKey(name: 'topics') List<String>? topics,
  }) = _GitHubRepository;

  factory GitHubRepository.fromJson(Map<String, dynamic> json) =>
      _$GitHubRepositoryFromJson(json);

  factory GitHubRepository.empty() => const GitHubRepository(
        name: '',
        fullName: '',
        htmlUrl: '',
        description: '',
        language: '',
        stargazersCount: 0,
        forksCount: 0,
      );
}
