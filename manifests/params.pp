class ventrilo::params {
  $ventrilo_srv = {
    name         => 'Server 1',
    phonetic     => 'Server 1',
    auth         => '0',
    duplicates   => '1',
    sendbuffer   => '0',
    recvbuffer   => '0',
    diag         => '0',
    logontimeout => '5',
    closestd     => '1',
    timestamp    => '0',
    pingrate     => '10',
    extrabuffer  => '0',
    chanwidth    => '0',
    chandepth    => '0',
    chanclients  => '0',
    disablequit  => '0',
    voicecodec   => '0',
    voiceformat  => '1',
    silentlobby  => '0',
    autokick     => '0'
  }

  $defaults = {
    daemon_user          => 'ventrilo',
    ventrilo_srv_path    => 'puppet:///modules/ventrilo/ventrilo_srv',
    ventrilo_status_path => 'puppet:///modules/ventrilo/ventrilo_status',
  }
}
