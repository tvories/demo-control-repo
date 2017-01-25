class profile::baseline {
  if $::kernel == 'Linux' {
    include profile::baseline::motd
    include profile::baseline::hosts
    include profile::baseline::ssh
    include profile::baseline::packages
    #include profile::baseline::sudo
    include profile::baseline::ntp
    include profile::baseline::path
    #include profile::baseline::vim
    #include profile::baseline::users
    include profile::puppet::agent
    include profile::baseline::selinux
  }
  elsif $::kernel == 'windows' {
    include profile::baseline::winpackages
    include profile::baseline::chocolatey
  }
}
