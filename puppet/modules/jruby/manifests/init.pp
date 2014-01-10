class jruby {
  $jruby_home = "/opt/jruby"
  $jruby_version = "1.7.10"

  exec { "download_jruby":
    command => "wget -O /tmp/jruby-${jruby_version}.tar.gz http://jruby.org.s3.amazonaws.com/downloads/${jruby_version}/jruby-bin-${jruby_version}.tar.gz",
    path => $path,
    unless => "ls /opt | grep jruby-${jruby_version}",
    require => Package["openjdk-7-jdk"]
  }

  exec { "unpack_jruby":
    command => "tar -zxf /tmp/jruby-${jruby_version}.tar.gz -C /opt",
    path => $path,
    creates => "${jruby_home}-${jruby_version}",
    require => Exec["download_jruby"]
  }

  file { $jruby_home:
    ensure => link,
    target => "${jruby_home}-${jruby_version}",
    require => Exec["unpack_jruby"]
  }
}
