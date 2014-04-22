$as_vagrant   = 'sudo -u vagrant -H bash -l -c'
$home         = '/home/vagrant'

# Pick a Ruby version modern enough, that works in the currently supported Rails
# versions, and for which RVM provides binaries.
$ruby_version = '2.1.1'

Exec {
  path => ['/usr/sbin', '/usr/bin', '/sbin', '/bin']
}

# --- Preinstall Stage ---------------------------------------------------------

stage { 'preinstall':
  before => Stage['main']
}

class apt_get_update {
  exec { 'apt-get -y update':
    unless => "test -e ${home}/.rvm"
  }
}
class { 'apt_get_update':
  stage => preinstall
}

# --- Packages -----------------------------------------------------------------

package { 'curl':
  ensure => installed
}

package { 'build-essential':
  ensure => installed
}

package { 'git-core':
  ensure => installed
}

# --- Ruby ---------------------------------------------------------------------

exec { 'install_ruby':
  command => "${as_vagrant} 'curl -sSL https://get.rvm.io | bash -s stable --ruby=${ruby_version}'",
  creates => "${home}/.rvm/bin/rvm",
  require => Package['curl']
}

# RVM installs a version of bundler, but for edge Rails we want the most recent one.
exec { 'install_bundle':
  command => "${as_vagrant} 'gem install bundler --no-rdoc --no-ri'",
  creates => "${home}/.rvm/bin/bundle",
  require => Exec['install_ruby']
}

# --- Locale -------------------------------------------------------------------

# Needed for docs generation.
exec { 'update-locale':
  command => 'update-locale LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8'
}
