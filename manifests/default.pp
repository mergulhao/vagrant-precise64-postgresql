class { 'postgresql::server':
  config_hash => {
    'listen_addresses'           => '*',
    'postgres_password'          => 'postgres',
    'ip_mask_allow_all_users'    => '10.0.2.0/24',
    'ip_mask_deny_postgres_user' => '0.0.0.0/32',
  },
}

include postgresql::server