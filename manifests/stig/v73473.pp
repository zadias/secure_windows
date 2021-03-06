# This class manages:
# V-73473
# Windows Server 2016 must be configured to audit System - IPsec Driver successes.
# V-73475
# Windows Server 2016 must be configured to audit System - IPsec Driver failures.
class secure_windows::stig::v73473 (
  Boolean $enforced = false,
) {
  if $enforced {
    auditpol { 'IPsec Driver':
      success => 'enable',
      failure => 'enable',
    }
  }
}
