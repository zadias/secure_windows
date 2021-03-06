# This class manages:
# V-73787
# The Increase scheduling priority user right must only be assigned to the Administrators group.
class secure_windows::stig::v73787 (
  Boolean $enforced = false,
) {
  if $enforced {
    local_security_policy { 'Increase scheduling priority':
      ensure         => 'present',
      policy_setting => 'SeIncreaseBasePriorityPrivilege',
      policy_type    => 'Privilege Rights',
      policy_value   => '*S-1-5-32-544',
    }
  }
}
