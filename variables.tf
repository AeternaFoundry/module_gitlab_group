variable "groups" {
  description = <<EOT
Map of groups, attributes below
Required:
    - name
    - path
Optional:
    - allow_merge_on_skipped_pipeline
    - allowed_email_domains_list
    - archive_on_destroy
    - auto_devops_enabled
    - avatar
    - avatar_hash
    - crm_enabled
    - default_branch
    - default_branch_protection
    - description
    - emails_enabled
    - extra_shared_runners_minutes_limit
    - ip_restriction_ranges
    - lfs_enabled
    - max_artifacts_size
    - membership_lock
    - mentions_disabled
    - only_allow_merge_if_all_discussions_are_resolved
    - only_allow_merge_if_pipeline_succeeds
    - parent_id
    - permanently_remove_on_delete
    - prevent_forking_outside_group
    - prevent_sharing_groups_outside_hierarchy
    - project_creation_level
    - request_access_enabled
    - require_two_factor_authentication
    - share_with_group_lock
    - shared_runners_minutes_limit
    - shared_runners_setting
    - subgroup_creation_level
    - two_factor_grace_period
    - visibility_level
    - wiki_access_level
    - default_branch_protection_defaults (block):
        - allow_force_push (optional)
        - allowed_to_merge (optional)
        - allowed_to_push (optional)
        - code_owner_approval_required (optional)
        - developer_can_initial_push (optional)
    - push_rules (block):
        - author_email_regex (optional)
        - branch_name_regex (optional)
        - commit_committer_check (optional)
        - commit_committer_name_check (optional)
        - commit_message_negative_regex (optional)
        - commit_message_regex (optional)
        - deny_delete_tag (optional)
        - file_name_regex (optional)
        - max_file_size (optional)
        - member_check (optional)
        - prevent_secrets (optional)
        - reject_non_dco_commits (optional)
        - reject_unsigned_commits (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name                                             = string
    path                                             = string
    allow_merge_on_skipped_pipeline                  = optional(bool)
    allowed_email_domains_list                       = optional(list(string))
    archive_on_destroy                               = optional(bool)
    auto_devops_enabled                              = optional(bool)
    avatar                                           = optional(string)
    avatar_hash                                      = optional(string)
    crm_enabled                                      = optional(bool)
    default_branch                                   = optional(string)
    default_branch_protection                        = optional(number)
    description                                      = optional(string)
    emails_enabled                                   = optional(bool)
    extra_shared_runners_minutes_limit               = optional(number)
    ip_restriction_ranges                            = optional(set(string))
    lfs_enabled                                      = optional(bool)
    max_artifacts_size                               = optional(number)
    membership_lock                                  = optional(bool)
    mentions_disabled                                = optional(bool)
    only_allow_merge_if_all_discussions_are_resolved = optional(bool)
    only_allow_merge_if_pipeline_succeeds            = optional(bool)
    parent_id                                        = optional(number)
    permanently_remove_on_delete                     = optional(bool)
    prevent_forking_outside_group                    = optional(bool)
    prevent_sharing_groups_outside_hierarchy         = optional(bool)
    project_creation_level                           = optional(string)
    request_access_enabled                           = optional(bool)
    require_two_factor_authentication                = optional(bool)
    share_with_group_lock                            = optional(bool)
    shared_runners_minutes_limit                     = optional(number)
    shared_runners_setting                           = optional(string)
    subgroup_creation_level                          = optional(string)
    two_factor_grace_period                          = optional(number)
    visibility_level                                 = optional(string)
    wiki_access_level                                = optional(string)
    default_branch_protection_defaults = optional(object({
      allow_force_push             = optional(bool)
      allowed_to_merge             = optional(list(string))
      allowed_to_push              = optional(list(string))
      code_owner_approval_required = optional(bool)
      developer_can_initial_push   = optional(bool)
    }))
    push_rules = optional(object({
      author_email_regex            = optional(string)
      branch_name_regex             = optional(string)
      commit_committer_check        = optional(bool)
      commit_committer_name_check   = optional(bool)
      commit_message_negative_regex = optional(string)
      commit_message_regex          = optional(string)
      deny_delete_tag               = optional(bool)
      file_name_regex               = optional(string)
      max_file_size                 = optional(number)
      member_check                  = optional(bool)
      prevent_secrets               = optional(bool)
      reject_non_dco_commits        = optional(bool)
      reject_unsigned_commits       = optional(bool)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.groups : (
        v.push_rules == null || (v.push_rules.max_file_size == null || (v.push_rules.max_file_size >= 0))
      )
    ])
    error_message = "must be at least 0"
  }
  # Note: 11 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

