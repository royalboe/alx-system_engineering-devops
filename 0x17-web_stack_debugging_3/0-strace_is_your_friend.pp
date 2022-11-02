#puppet manifest to rename a file and create a file

file {'/var/www/html/wp-includes/class-wp-locale.phpp':
  ensure => present,
  source => '/var/www/html/wp-includes/class-wp-locale.php',
}
