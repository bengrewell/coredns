# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include coredns::service
class coredns::service {

  docker::run { "coredns_docker_container":
    image  => "$::coredns::image_name",
    detach => true,
    net    => "host",
    volumes => ['/opt/coredns/:/root'],
    command => '-conf /root/Corefile',
  }

  # docker::run { 'helloworld':
  #   image            => 'base',
  #   detach           => true,
  #   service_prefix   => 'docker-',
  #   command          => '/bin/sh -c "while true; do echo hello world; sleep 1; done"',
  #   ports            => ['4444', '4555'],
  #   expose           => ['4666', '4777'],
  #   links            => ['mysql:db'],
  #   net              => ['my-user-def-net','my-user-def-net-2'],
  #   disable_network  => false,
  #   volumes          => ['/var/lib/couchdb', '/var/log'],
  #   volumes_from     => '6446ea52fbc9',
  #   memory_limit     => '10m', # (format: '<number><unit>', where unit = b, k, m or g)
  #   cpuset           => ['0', '3'],
  #   username         => 'example',
  #   hostname         => 'example.com',
  #   env              => ['FOO=BAR', 'FOO2=BAR2'],
  #   env_file         => ['/etc/foo', '/etc/bar'],
  #   labels           => ['com.example.foo="true"', 'com.example.bar="false"'],
  #   dns              => ['8.8.8.8', '8.8.4.4'],
  #   restart_service  => true,
  #   privileged       => false,
  #   pull_on_start    => false,
  #   before_stop      => 'echo "So Long, and Thanks for All the Fish"',
  #   before_start     => 'echo "Run this on the host before starting the Docker container"',
  #   after_stop       => 'echo "container has stopped"',
  #   after_start      => 'echo "container has started"',
  #   after            => [ 'container_b', 'mysql' ],
  #   depends          => [ 'container_a', 'postgres' ],
  #   stop_wait_time   => 10,
  #   read_only        => false,
  #   extra_parameters => [ '--restart=always' ],
  # }


}
