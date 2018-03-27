# This class manages the servicing level requirement
class secure_windows::servicing_level {

  # V-73239
  # Systems must be maintained at a supported servicing level.
  if versioncmp($facts['kernelversion'], '10.0.14394') >= 0 {
    notify { 'In compliance with V-73239':
      message => 'In compliance with DoD STIG V-73239. System is at a supported servicing level.',
    }
  }
  else {
    fail('Not in compliance with DoD STIG V-73239. Please update the system to a supported servicing level.')
  }
}
