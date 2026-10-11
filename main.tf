resource "gitlab_group" "groups" {
  for_each = var.groups

  name                                             = each.value.name
  path                                             = each.value.path
  allow_merge_on_skipped_pipeline                  = each.value.allow_merge_on_skipped_pipeline
  allowed_email_domains_list                       = each.value.allowed_email_domains_list
  archive_on_destroy                               = each.value.archive_on_destroy
  auto_devops_enabled                              = each.value.auto_devops_enabled
  avatar                                           = each.value.avatar
  avatar_hash                                      = each.value.avatar_hash
  crm_enabled                                      = each.value.crm_enabled
  default_branch                                   = each.value.default_branch
  default_branch_protection                        = each.value.default_branch_protection
  description                                      = each.value.description
  emails_enabled                                   = each.value.emails_enabled
  extra_shared_runners_minutes_limit               = each.value.extra_shared_runners_minutes_limit
  ip_restriction_ranges                            = each.value.ip_restriction_ranges
  lfs_enabled                                      = each.value.lfs_enabled
  max_artifacts_size                               = each.value.max_artifacts_size
  membership_lock                                  = each.value.membership_lock
  mentions_disabled                                = each.value.mentions_disabled
  only_allow_merge_if_all_discussions_are_resolved = each.value.only_allow_merge_if_all_discussions_are_resolved
  only_allow_merge_if_pipeline_succeeds            = each.value.only_allow_merge_if_pipeline_succeeds
  parent_id                                        = each.value.parent_id
  permanently_remove_on_delete                     = each.value.permanently_remove_on_delete
  prevent_forking_outside_group                    = each.value.prevent_forking_outside_group
  prevent_sharing_groups_outside_hierarchy         = each.value.prevent_sharing_groups_outside_hierarchy
  project_creation_level                           = each.value.project_creation_level
  request_access_enabled                           = each.value.request_access_enabled
  require_two_factor_authentication                = each.value.require_two_factor_authentication
  share_with_group_lock                            = each.value.share_with_group_lock
  shared_runners_minutes_limit                     = each.value.shared_runners_minutes_limit
  shared_runners_setting                           = each.value.shared_runners_setting
  subgroup_creation_level                          = each.value.subgroup_creation_level
  two_factor_grace_period                          = each.value.two_factor_grace_period
  visibility_level                                 = each.value.visibility_level
  wiki_access_level                                = each.value.wiki_access_level

  dynamic "default_branch_protection_defaults" {
    for_each = each.value.default_branch_protection_defaults != null ? [each.value.default_branch_protection_defaults] : []
    content {
      allow_force_push             = default_branch_protection_defaults.value.allow_force_push
      allowed_to_merge             = default_branch_protection_defaults.value.allowed_to_merge
      allowed_to_push              = default_branch_protection_defaults.value.allowed_to_push
      code_owner_approval_required = default_branch_protection_defaults.value.code_owner_approval_required
      developer_can_initial_push   = default_branch_protection_defaults.value.developer_can_initial_push
    }
  }

  dynamic "push_rules" {
    for_each = each.value.push_rules != null ? [each.value.push_rules] : []
    content {
      author_email_regex            = push_rules.value.author_email_regex
      branch_name_regex             = push_rules.value.branch_name_regex
      commit_committer_check        = push_rules.value.commit_committer_check
      commit_committer_name_check   = push_rules.value.commit_committer_name_check
      commit_message_negative_regex = push_rules.value.commit_message_negative_regex
      commit_message_regex          = push_rules.value.commit_message_regex
      deny_delete_tag               = push_rules.value.deny_delete_tag
      file_name_regex               = push_rules.value.file_name_regex
      max_file_size                 = push_rules.value.max_file_size
      member_check                  = push_rules.value.member_check
      prevent_secrets               = push_rules.value.prevent_secrets
      reject_non_dco_commits        = push_rules.value.reject_non_dco_commits
      reject_unsigned_commits       = push_rules.value.reject_unsigned_commits
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

