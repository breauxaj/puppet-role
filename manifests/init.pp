class role (
  $label = 'undefined',
) {
  file { '/etc/role':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => "${label}",
  }

}
