class { 'postgresql::server':
  config_hash => {
    'listen_addresses'           => '*',
  },
}

include postgresql::server