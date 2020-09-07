class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCxqVJ6cnXZWziyXJDzPTwCOlrFuUmJf/BL6vtYem/F2O4L4geebuoISRgtULhi6r7hGViZxU72HE9N+3ABhobqN3i4EyjipzP+5/1OByEebPvL5FsFF6QqUMX8z5tYuk8L+BzfSPt8kXmW/cPLtnMf+cnd+kBEEk8B+GqhdhK/M8LN0KLf9zSB1wtgXhy7pGsTkSV9hTx1Anp9b33o51v2zkDkaHjnwZ4yc9TeKmHNRA/XeoTh99ygWCms4r7b00YYLuVIBsuPi0jLq30re9s/eBSdQXmDrnXUZCppwxl3cRMj0xxT1VngDvFIis6oDpNBEA5Bj2kJsAboCsex9bMH root@master.puppet.vm',
	}  
}
