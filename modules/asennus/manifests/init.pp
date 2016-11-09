class asennus {

Package {ensure => "installed", allowcdrom => "true"}
 package {"gedit":}
 package { "tree":}
 package { "munin":}
 package { "apache2":}
 package { "ssh":}

file { "/home/xubuntu/public_html/index.html":
 content => "It's working! Welcome user!\n",
 
 }


 file { "/etc/apache2/mods-enabled/userdir.conf":
 ensure => "link",
 target => "../mods-available/userdir.conf",
 notify => Service ["apache2"],
 
 }

file { "/etc/apache2/mods-enabled/userdir.load":
 ensure => "link",
 target => "../mods-available/userdir.load",
 notify => Service ["apache2"],

}
 
 service { "apache2":
 ensure => "true",
 enable => "true",

}


}
