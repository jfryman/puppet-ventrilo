class ventrilo(
    $server_name          = $ventrilo::params::ventrilo_srv['server_name'],
    $phonetic             = $ventrilo::params::ventrilo_srv['phonetic'],
    $auth                 = $ventrilo::params::ventrilo_srv['auth'],
    $duplicates           = $ventrilo::params::ventrilo_srv['duplicates'],
    $sendbuffer           = $ventrilo::params::ventrilo_srv['sendbuffer'],
    $recvbuffer           = $ventrilo::params::ventrilo_srv['recvbuffer'],
    $diag                 = $ventrilo::params::ventrilo_srv['diag'],
    $logontimeout         = $ventrilo::params::ventrilo_srv['logontimeout'],
    $closestd             = $ventrilo::params::ventrilo_srv['closestd'],
    $timestamp            = $ventrilo::params::ventrilo_srv['timestamp'],
    $pingrate             = $ventrilo::params::ventrilo_srv['pingrate'],
    $extrabuffer          = $ventrilo::params::ventrilo_srv['extrabuffer'],
    $chanwidth            = $ventrilo::params::ventrilo_srv['chanwidth'],
    $chandepth            = $ventrilo::params::ventrilo_srv['chandepth'],
    $chanclients          = $ventrilo::params::ventrilo_srv['chanclients'],
    $disablequit          = $ventrilo::params::ventrilo_srv['disablequit'],
    $voicecodec           = $ventrilo::params::ventrilo_srv['voicecodec'],
    $voiceformat          = $ventrilo::params::ventrilo_srv['voiceformat'],
    $silentlobby          = $ventrilo::params::ventrilo_srv['silentlobby'],
    $autokick             = $ventrilo::params::ventrilo_srv['autokick'],
    $daemon_user          = $ventrilo::params::defaults['daemon_user'],
    $ventrilo_srv_path    = $ventrilo::params::defaults['ventrilo_srv_path'],
    $ventrilo_status_path = $ventrilo::params::defaults['ventrilo_status_path'],
    $password,
    $server_password
)inherits ventrilo::params {
  include stdlib

  anchor { 'ventrilo::begin': }
  -> class { 'ventrilo::package':
    ventrilo_srv_path    => $ventrilo_srv_path,
    ventrilo_status_path => $ventrilo_status_path,
  }
  -> class { 'ventrilo::config':
    server_name     => $server_name,
    phonetic        => $phonetic,
    auth            => $auth,
    duplicates      => $duplicates,
    sendbuffer      => $sendbuffer,
    recvbuffer      => $recvbuffer,
    diag            => $diag,
    logontimeout    => $logontimeout,
    closestd        => $closestd,
    timestamp       => $timestamp,
    pingrate        => $pingrate,
    extrabuffer     => $extrabuffer,
    chanwidth       => $chanwidth,
    chandepth       => $chandepth,
    chanclients     => $chanclients,
    disablequit     => $disablequit,
    voicecodec      => $voicecodec,
    voiceformat     => $voiceformat,
    silentlobby     => $silentlobby,
    autokick        => $autokick,
    password        => $password,
    server_password => $server_password,
    daemon_user     => $daemon_user,
  }
  ~> class { 'ventrilo::service': }
  -> anchor { 'ventrilo::end': }
}
