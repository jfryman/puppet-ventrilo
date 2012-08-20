class ventrilo::config(
  $server_name,
  $phonetic,
  $auth,
  $duplicates,
  $sendbuffer,
  $recvbuffer,
  $diag,
  $logontimeout,
  $closestd,
  $timestamp,
  $pingrate,
  $extrabuffer,
  $chanwidth,
  $chandepth,
  $chanclients,
  $disablequit,
  $voicecodec,
  $voiceformat,
  $silentlobby,
  $autokick,
  $password,
  $server_password,
  $daemon_user,
) {
  File {
    owner => $daemon_user,
    group => $daemon_user,
    mode  => '0644',
  }

  user { $daemon_user:
    ensure     => present,
    group      => $daemon_user,
    managehome => true,
  }
  group { $daemon_user:
    ensure => present,
  }
  file{ '/etc/init.d/ventrilo':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
    source => 'puppet:///modules/ventrilo/ventrilo.init',
  }
  file { '/etc/ventrilo':
    ensure => directory,
  }
  file { '/etc/ventrilo/ventrilo_srv.ini':
    ensure  => file,
    content => template('ventrilo/ventrilo_srv.ini'),
  }
}
