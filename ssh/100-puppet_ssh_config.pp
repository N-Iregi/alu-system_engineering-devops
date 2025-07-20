# This Puppet manifest ensures the SSH config file exists
# It sets proper ownership, permissions, and secure SSH options

file { '/home/vagrant/.ssh/config':
  ensure  => file,
  owner   => 'vagrant',
  group   => 'vagrant',
  mode    => '0600',
  content => @("EOC")
    Host *
      IdentityFile ~/.ssh/school
      PasswordAuthentication no
    | EOC
}
