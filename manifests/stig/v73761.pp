# This class manages:
# V-73761
# The Deny log on as a batch job user right on domain controllers must be configured to prevent unauthenticated access.
class secure_windows::stig::v73761 (
  Boolean $enforced = false,
) {
  if $enforced {
    if($facts['windows_server_type'] == 'windowsdc') {
      local_security_policy { 'Deny log on as a batch job':
        ensure         => 'present',
        policy_setting => 'SeDenyBatchLogonRight',
        policy_type    => 'Privilege Rights',
        policy_value   => '*S-1-5-32-546',
      }
    }
  }
}
