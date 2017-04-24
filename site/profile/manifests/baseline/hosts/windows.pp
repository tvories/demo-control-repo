class profile::baseline::hosts::windows {
  # To be defined - this should include everything to define the hosts file on a Windows system.
  class  { '::hosts':
    collect_all           => true,
    purge_hosts           => true,
    enable_ipv6_localhost => false,
  }

}
