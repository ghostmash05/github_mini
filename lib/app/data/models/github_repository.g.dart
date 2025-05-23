// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GitHubRepositoryImpl _$$GitHubRepositoryImplFromJson(
        Map<String, dynamic> json) =>
    _$GitHubRepositoryImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      fullName: json['full_name'] as String?,
      private: json['private'] as bool?,
      owner: json['owner'] as Map<String, dynamic>?,
      htmlUrl: json['html_url'] as String?,
      description: json['description'] as String?,
      fork: json['fork'] as bool?,
      url: json['url'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      pushedAt: json['pushed_at'] as String?,
      gitUrl: json['git_url'] as String?,
      sshUrl: json['ssh_url'] as String?,
      cloneUrl: json['clone_url'] as String?,
      svnUrl: json['svn_url'] as String?,
      homepage: json['homepage'] as String?,
      size: (json['size'] as num?)?.toInt(),
      stargazersCount: (json['stargazers_count'] as num?)?.toInt(),
      watchersCount: (json['watchers_count'] as num?)?.toInt(),
      language: json['language'] as String?,
      hasIssues: json['has_issues'] as bool?,
      hasProjects: json['has_projects'] as bool?,
      hasDownloads: json['has_downloads'] as bool?,
      hasWiki: json['has_wiki'] as bool?,
      hasPages: json['has_pages'] as bool?,
      forksCount: (json['forks_count'] as num?)?.toInt(),
      openIssuesCount: (json['open_issues_count'] as num?)?.toInt(),
      defaultBranch: json['default_branch'] as String?,
      topics:
          (json['topics'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$GitHubRepositoryImplToJson(
        _$GitHubRepositoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.fullName,
      'private': instance.private,
      'owner': instance.owner,
      'html_url': instance.htmlUrl,
      'description': instance.description,
      'fork': instance.fork,
      'url': instance.url,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'pushed_at': instance.pushedAt,
      'git_url': instance.gitUrl,
      'ssh_url': instance.sshUrl,
      'clone_url': instance.cloneUrl,
      'svn_url': instance.svnUrl,
      'homepage': instance.homepage,
      'size': instance.size,
      'stargazers_count': instance.stargazersCount,
      'watchers_count': instance.watchersCount,
      'language': instance.language,
      'has_issues': instance.hasIssues,
      'has_projects': instance.hasProjects,
      'has_downloads': instance.hasDownloads,
      'has_wiki': instance.hasWiki,
      'has_pages': instance.hasPages,
      'forks_count': instance.forksCount,
      'open_issues_count': instance.openIssuesCount,
      'default_branch': instance.defaultBranch,
      'topics': instance.topics,
    };
