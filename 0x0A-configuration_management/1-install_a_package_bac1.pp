# Installs flask module with pip3 using puppet

class flask (
  $version = '2.1.0',
) {
  package { 'python3-pip':
    ensure => present,

  }

  exec { 'install_flask':
    command  => "/usr/bin/pip3 install Flask==${version}",
    unless   => "/usr/bin/pip3 Flask | grep Version | grep ${version}",
    provider => 'shell',
    require  => Package['pthon'],
  }
}
