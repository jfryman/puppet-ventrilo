class ventrilo::service {
  service { 'ventrilo':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
