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
