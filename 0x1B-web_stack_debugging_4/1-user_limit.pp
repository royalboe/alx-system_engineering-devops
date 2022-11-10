# puppet file to increase number of open files for a user

exec { 'sed -i "/holberton hard/c\holberton hard nofile 60000" /etc/security/limits.conf':
  cwd  => '/root',
  path => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/' ],
}

exec { 'sed -i "/holberton soft/c\holberton soft nofile 20000" /etc/security/limits.conf':
  cwd  => '/root',
  path => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/' ],
}
