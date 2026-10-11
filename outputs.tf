output "groups_id" {
  description = "Map of id values across all groups, keyed the same as var.groups except keys with no id are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "groups_allow_merge_on_skipped_pipeline" {
  description = "Map of allow_merge_on_skipped_pipeline values across all groups, keyed the same as var.groups except keys with no allow_merge_on_skipped_pipeline are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.allow_merge_on_skipped_pipeline if v.allow_merge_on_skipped_pipeline != null }
}
output "groups_allowed_email_domains_list" {
  description = "Map of allowed_email_domains_list values across all groups, keyed the same as var.groups except keys with no allowed_email_domains_list are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.allowed_email_domains_list if v.allowed_email_domains_list != null && length(v.allowed_email_domains_list) > 0 }
}
output "groups_archive_on_destroy" {
  description = "Map of archive_on_destroy values across all groups, keyed the same as var.groups except keys with no archive_on_destroy are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.archive_on_destroy if v.archive_on_destroy != null }
}
output "groups_auto_devops_enabled" {
  description = "Map of auto_devops_enabled values across all groups, keyed the same as var.groups except keys with no auto_devops_enabled are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.auto_devops_enabled if v.auto_devops_enabled != null }
}
output "groups_avatar" {
  description = "Map of avatar values across all groups, keyed the same as var.groups except keys with no avatar are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.avatar if v.avatar != null && length(v.avatar) > 0 }
}
output "groups_avatar_hash" {
  description = "Map of avatar_hash values across all groups, keyed the same as var.groups except keys with no avatar_hash are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.avatar_hash if v.avatar_hash != null && length(v.avatar_hash) > 0 }
}
output "groups_avatar_url" {
  description = "Map of avatar_url values across all groups, keyed the same as var.groups except keys with no avatar_url are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.avatar_url if v.avatar_url != null && length(v.avatar_url) > 0 }
}
output "groups_crm_enabled" {
  description = "Map of crm_enabled values across all groups, keyed the same as var.groups except keys with no crm_enabled are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.crm_enabled if v.crm_enabled != null }
}
output "groups_default_branch" {
  description = "Map of default_branch values across all groups, keyed the same as var.groups except keys with no default_branch are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.default_branch if v.default_branch != null && length(v.default_branch) > 0 }
}
output "groups_default_branch_protection" {
  description = "Map of default_branch_protection values across all groups, keyed the same as var.groups except keys with no default_branch_protection are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.default_branch_protection if v.default_branch_protection != null }
}
output "groups_default_branch_protection_defaults" {
  description = "Map of default_branch_protection_defaults values across all groups, keyed the same as var.groups except keys with no default_branch_protection_defaults are omitted"
  value       = { for k, v in gitlab_group.groups : k => one(v.default_branch_protection_defaults) if v.default_branch_protection_defaults != null && length(v.default_branch_protection_defaults) > 0 }
}
output "groups_description" {
  description = "Map of description values across all groups, keyed the same as var.groups except keys with no description are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.description if v.description != null && length(v.description) > 0 }
}
output "groups_emails_enabled" {
  description = "Map of emails_enabled values across all groups, keyed the same as var.groups except keys with no emails_enabled are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.emails_enabled if v.emails_enabled != null }
}
output "groups_extra_shared_runners_minutes_limit" {
  description = "Map of extra_shared_runners_minutes_limit values across all groups, keyed the same as var.groups except keys with no extra_shared_runners_minutes_limit are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.extra_shared_runners_minutes_limit if v.extra_shared_runners_minutes_limit != null }
}
output "groups_full_name" {
  description = "Map of full_name values across all groups, keyed the same as var.groups except keys with no full_name are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.full_name if v.full_name != null && length(v.full_name) > 0 }
}
output "groups_full_path" {
  description = "Map of full_path values across all groups, keyed the same as var.groups except keys with no full_path are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.full_path if v.full_path != null && length(v.full_path) > 0 }
}
output "groups_ip_restriction_ranges" {
  description = "Map of ip_restriction_ranges values across all groups, keyed the same as var.groups except keys with no ip_restriction_ranges are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.ip_restriction_ranges if v.ip_restriction_ranges != null && length(v.ip_restriction_ranges) > 0 }
}
output "groups_lfs_enabled" {
  description = "Map of lfs_enabled values across all groups, keyed the same as var.groups except keys with no lfs_enabled are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.lfs_enabled if v.lfs_enabled != null }
}
output "groups_max_artifacts_size" {
  description = "Map of max_artifacts_size values across all groups, keyed the same as var.groups except keys with no max_artifacts_size are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.max_artifacts_size if v.max_artifacts_size != null }
}
output "groups_membership_lock" {
  description = "Map of membership_lock values across all groups, keyed the same as var.groups except keys with no membership_lock are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.membership_lock if v.membership_lock != null }
}
output "groups_mentions_disabled" {
  description = "Map of mentions_disabled values across all groups, keyed the same as var.groups except keys with no mentions_disabled are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.mentions_disabled if v.mentions_disabled != null }
}
output "groups_name" {
  description = "Map of name values across all groups, keyed the same as var.groups except keys with no name are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "groups_only_allow_merge_if_all_discussions_are_resolved" {
  description = "Map of only_allow_merge_if_all_discussions_are_resolved values across all groups, keyed the same as var.groups except keys with no only_allow_merge_if_all_discussions_are_resolved are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.only_allow_merge_if_all_discussions_are_resolved if v.only_allow_merge_if_all_discussions_are_resolved != null }
}
output "groups_only_allow_merge_if_pipeline_succeeds" {
  description = "Map of only_allow_merge_if_pipeline_succeeds values across all groups, keyed the same as var.groups except keys with no only_allow_merge_if_pipeline_succeeds are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.only_allow_merge_if_pipeline_succeeds if v.only_allow_merge_if_pipeline_succeeds != null }
}
output "groups_parent_id" {
  description = "Map of parent_id values across all groups, keyed the same as var.groups except keys with no parent_id are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.parent_id if v.parent_id != null }
}
output "groups_path" {
  description = "Map of path values across all groups, keyed the same as var.groups except keys with no path are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.path if v.path != null && length(v.path) > 0 }
}
output "groups_permanently_remove_on_delete" {
  description = "Map of permanently_remove_on_delete values across all groups, keyed the same as var.groups except keys with no permanently_remove_on_delete are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.permanently_remove_on_delete if v.permanently_remove_on_delete != null }
}
output "groups_prevent_forking_outside_group" {
  description = "Map of prevent_forking_outside_group values across all groups, keyed the same as var.groups except keys with no prevent_forking_outside_group are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.prevent_forking_outside_group if v.prevent_forking_outside_group != null }
}
output "groups_prevent_sharing_groups_outside_hierarchy" {
  description = "Map of prevent_sharing_groups_outside_hierarchy values across all groups, keyed the same as var.groups except keys with no prevent_sharing_groups_outside_hierarchy are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.prevent_sharing_groups_outside_hierarchy if v.prevent_sharing_groups_outside_hierarchy != null }
}
output "groups_project_creation_level" {
  description = "Map of project_creation_level values across all groups, keyed the same as var.groups except keys with no project_creation_level are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.project_creation_level if v.project_creation_level != null && length(v.project_creation_level) > 0 }
}
output "groups_push_rules" {
  description = "Map of push_rules values across all groups, keyed the same as var.groups except keys with no push_rules are omitted"
  value       = { for k, v in gitlab_group.groups : k => one(v.push_rules) if v.push_rules != null && length(v.push_rules) > 0 }
}
output "groups_request_access_enabled" {
  description = "Map of request_access_enabled values across all groups, keyed the same as var.groups except keys with no request_access_enabled are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.request_access_enabled if v.request_access_enabled != null }
}
output "groups_require_two_factor_authentication" {
  description = "Map of require_two_factor_authentication values across all groups, keyed the same as var.groups except keys with no require_two_factor_authentication are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.require_two_factor_authentication if v.require_two_factor_authentication != null }
}
output "groups_runners_token" {
  description = "Map of runners_token values across all groups, keyed the same as var.groups except keys with no runners_token are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.runners_token if v.runners_token != null && length(v.runners_token) > 0 }
  sensitive   = true
}
output "groups_share_with_group_lock" {
  description = "Map of share_with_group_lock values across all groups, keyed the same as var.groups except keys with no share_with_group_lock are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.share_with_group_lock if v.share_with_group_lock != null }
}
output "groups_shared_runners_minutes_limit" {
  description = "Map of shared_runners_minutes_limit values across all groups, keyed the same as var.groups except keys with no shared_runners_minutes_limit are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.shared_runners_minutes_limit if v.shared_runners_minutes_limit != null }
}
output "groups_shared_runners_setting" {
  description = "Map of shared_runners_setting values across all groups, keyed the same as var.groups except keys with no shared_runners_setting are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.shared_runners_setting if v.shared_runners_setting != null && length(v.shared_runners_setting) > 0 }
}
output "groups_subgroup_creation_level" {
  description = "Map of subgroup_creation_level values across all groups, keyed the same as var.groups except keys with no subgroup_creation_level are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.subgroup_creation_level if v.subgroup_creation_level != null && length(v.subgroup_creation_level) > 0 }
}
output "groups_two_factor_grace_period" {
  description = "Map of two_factor_grace_period values across all groups, keyed the same as var.groups except keys with no two_factor_grace_period are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.two_factor_grace_period if v.two_factor_grace_period != null }
}
output "groups_visibility_level" {
  description = "Map of visibility_level values across all groups, keyed the same as var.groups except keys with no visibility_level are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.visibility_level if v.visibility_level != null && length(v.visibility_level) > 0 }
}
output "groups_web_url" {
  description = "Map of web_url values across all groups, keyed the same as var.groups except keys with no web_url are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.web_url if v.web_url != null && length(v.web_url) > 0 }
}
output "groups_wiki_access_level" {
  description = "Map of wiki_access_level values across all groups, keyed the same as var.groups except keys with no wiki_access_level are omitted"
  value       = { for k, v in gitlab_group.groups : k => v.wiki_access_level if v.wiki_access_level != null && length(v.wiki_access_level) > 0 }
}

