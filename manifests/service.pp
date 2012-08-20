class ventrilo::server {
  service { 'ventrilo':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
