default[:icinga][:plugin_dir] = "/usr/lib/nagios/plugins"
default[:icinga][:checks][:memory][:critical] = 150
default[:icinga][:checks][:memory][:warning]  = 250
default[:icinga][:checks][:load][:critical]   = "30,25,20"
default[:icinga][:checks][:load][:warning]    = "15,15,10"
default[:icinga][:checks][:smtp_host] = String.new
