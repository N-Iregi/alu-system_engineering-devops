# This Puppet manifest configures the global SSH client settings to use a specific private key and disable password authentication
file { '/etc/ssh/ssh_config':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  content => @("EOC")
    Host *
      IdentityFile ~/.ssh/school
      PasswordAuthentication no
    | EOC
}

