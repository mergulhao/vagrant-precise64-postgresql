class postgresql {
  package { 'postgresql': ensure => installed }
  service { 'postgresql':
    ensure  => running,
    require => Package['postgresql'],
  }
  file { 'pg_hba.conf':
    path    => '/etc/postgresql/9.1/main/pg_hba.conf',
    content => template("postgresql/pg_hba.conf.erb"),
    notify  => Service['postgresql'],
  }
  file { 'postgresql.conf':
    path    => '/etc/postgresql/9.1/main/postgresql.conf',
    content => template("postgresql/postgresql.conf.erb"),
    notify  => Service['postgresql'],
  }
}

include postgresql