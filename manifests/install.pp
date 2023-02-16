# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include coredns::install
class coredns::install {
  include 'docker'

  docker::image { "$::coredns::image_name":
    ensure => $::coredns::package_ensure
  }
}
