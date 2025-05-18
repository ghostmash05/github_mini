import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_user.freezed.dart';
part 'github_user.g.dart';

@freezed
class GitHubUser with _$GitHubUser {
  const factory GitHubUser({
    String? login,
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
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _GitHubUser;

  factory GitHubUser.fromJson(Map<String, dynamic> json) =>
      _$GitHubUserFromJson(json);

  factory GitHubUser.empty() => const GitHubUser(
        login: '',
        avatarUrl: '',
        name: '',
        bio: '',
        publicRepos: 0,
        followers: 0,
        following: 0,
      );
}
