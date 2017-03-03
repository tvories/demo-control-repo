File { backup => false }

Package {
  allow_virtual => true,
}

if $::kernel == 'Linux' {

  Firewall {
    before  => Class['profile::firewall::post'],
    require => Class['profile::firewall::pre'],
  }

  class { ['profile::firewall::pre', 'profile::firewall::post']: }

  resources { 'firewall':
    purge => true,
  }

  include firewall

}

elsif $::kernel == 'windows' {
  Package { provider => chocolatey, }
}

String $myvar = hiera('foo')
notify { "print out ${myvar}":
  message => "my secret is ${myvar}",
}

node default {
  #  if !empty( $trusted['extensions']['pp_role'] ) {
  #  include "role::${trusted['extensions']['pp_role']}"
  #}
}
