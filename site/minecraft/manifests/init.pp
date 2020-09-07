class minecraft {
  file {'/opt/minecraft':
    ensure => directory,
  }
  file {'/opt/minecraft/minecraft_servr.jar':
    ensure => file,
    source => 'https://launcher.mojang.com/v1/objects/c5f6fb23c3876461d46ec380421e42b289789530/server.jar',
  }
  package {'java':
    ensure => present,
  }
  file {'/opt/minecraft/eula.txt':
    ensure => file,
    content => 'eula=true',
  }
  file {'/etc/systemd/system/minecraft.service':
    ensure => file,
    source => 'puppet:///modules/minecraft/minecraft.service',
  }  
}
