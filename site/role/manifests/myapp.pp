class role::myapp {
  include profile::baseline
  include profile::app::myapp
  include profile::firewall::web
}
