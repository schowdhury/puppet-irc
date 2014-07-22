node default {
  exec { "apt-update":
      command => "/usr/bin/apt-get update"
  }
  user {'schowdhury':
    ensure => present,
    home => '/home/schowdhury',
    managehome => true,
    shell  => '/bin/bash'
  }
  include ircd
}
