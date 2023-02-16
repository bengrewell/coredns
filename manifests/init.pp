# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include coredns
class coredns(
  Boolean       $package_manage = true,
  String        $package_ensure = 'present',
  Array[String] $exec_path = ['/usr/local/sbin','/usr/local/bin','/usr/sbin','/usr/bin','/sbin','/bin'],
  String        $image_name = "coredns/coredns",
) {
}
