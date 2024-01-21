file_line { 'Turn off passwd auth':
  path  => '/etc/ssh/sshd_config',
  line  => 'PasswordAuthentication no',
}

file_line { 'Declare identity file':
  path  => '/etc/ssh/sshd_config',
  line  => 'IdentityFile ~/.ssh/school',
}

service { 'ssh':
  ensure    => running,
  subscribe => File_line['Turn off passwd auth', 'Declare identity file'],
}
