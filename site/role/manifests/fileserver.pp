# A central file server for various binaries
class role::fileserver {
  include profile::baseline
  include profile::inf::fileserver
}
