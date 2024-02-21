# using Puppet
file_line { 'Refuse authenticate password':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthentication no',
}

file_line { 'private key':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school'
}
