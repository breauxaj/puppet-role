class role (
  $label = 'undefined',
) {
  include role::base
  include role::drupal
  include role::coldfusion
  include role::sql
  
  file { '/etc/role':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => "${label}",
  }

}
