class role (
  $label = 'undefined',
) {
  include role::drupal
  
  file { '/etc/role':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => "${label}",
  }

}
