# A puppet manifest to install Nginx
class nginx_install {
  package { 'nginx':
    ensure => installed,
  }

  service { 'nginx':
    ensure => running,
    enable => true,
    require => Package['nginx'],
  }

  file { '/usr/share/nginx/html/index.html':
    ensure  => file,
    content => 'Hello World!',
    require => Package['nginx'],
  }

  file { '/etc/nginx/sites-available/default':
    ensure  => file,
    content => '
server {
  listen 80 default_server;
  listen [::]:80 default_server;
  root /usr/share/nginx/html;
  index index.html;
  server_name _;

  location / {
    try_files $uri $uri/ =404;
  }

  location /redirect_me {
    return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
  }
}',
    require => Package['nginx'],
    notify  => Service['nginx'],
  }
}

include nginx_install
