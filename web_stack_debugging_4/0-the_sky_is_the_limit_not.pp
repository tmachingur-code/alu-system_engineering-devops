# Increase Nginx file descriptor limit to handle high concurrency

exec { 'set-nginx-ulimit':
  command => "/bin/sed -i 's/^ULIMIT=.*/ULIMIT=\"-n 4096\"/' /etc/default/nginx",
  unless  => "/bin/grep -q '^ULIMIT=\"-n 4096\"$' /etc/default/nginx",
}

exec { 'restart-nginx':
  command     => '/usr/sbin/service nginx restart',
  refreshonly => true,
  subscribe   => Exec['set-nginx-ulimit'],
}
