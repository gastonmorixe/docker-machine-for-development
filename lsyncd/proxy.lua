settings {
  logfile      = "/var/log/lsyncd-proxy.log",  -- change this name
  pidfile      = "/var/log/lsyncd-proxy.pid",  -- change this name
  statusFile   = "/var/log/lsyncd-proxy.status",  -- change this name
  nodaemon     = true, -- It can be run as daemon with false
  insist       = false, -- true can be reconnected indefinitely (or number can be specified).
}

sync {
  default.rsync,
  source = "/Users/work1/Projects/groove/stack",  -- change this path
  target = 'root@104.131.21.43:/root/stack',  -- change this path
  delay  = 0,
  rsync  = {
    binary   = '/usr/local/bin/rsync',
    archive  = true,
    links    = true,
    update   = true,
    verbose  = false,
    compress = true,
    rsh = '/usr/bin/ssh -p 22 -i /Users/work1/.ssh/remotework'
  },
  exclude = {
    '.DS_Store',
    '*.bak',
    '*.backup',
    'node_modules/',
    'release_*/',
    '.git/',
    'log/',
    'tmp/',
  },
}
