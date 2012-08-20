class ventrilo::package(
  $ventrilo_srv_path,
  $ventrilo_status_path
) {
  File {
    owner => 'root',
    group => 'root',
    mode  => '0755',
  }

  file { '/usr/bin/ventrilo_srv':
    ensure => file,
    source => $ventrilo_srv_path,
  }
  file { '/usr/bin/ventrilo_status':
    ensure => file,
    source => $ventrilo_status_path,
  }
}
