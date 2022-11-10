# puppet file to debug nginx server

exec { 'sed -i "s/15/4096/" /etc/default/nginx':
  cwd  => '/root',
  path => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/' ],
}

exec { 'sudo service nginx restart':
  cwd  => '/root',
  path => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/' ],
}
