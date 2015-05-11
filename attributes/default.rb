# Copyright 2014 N3TWORK, Inc.
#
# Licensed under Apache 2.0 - see the LICENSE file


# Downloading
default[:druid][:version] = "0.6.105"
default[:druid][:mirror] = "http://static.druid.io/artifacts/releases"
default[:druid][:checksum] = "eaa676ea2313f2b99ac84709f449e9b1714c1cf06460c6e476c6ec6cd21e6e7e"

# Installation
default[:druid][:user] = "druid"
default[:druid][:group] = "druid"
default[:druid][:install_dir] = "/opt/druid"
default[:druid][:config_dir] = "/etc/druid"
default[:druid][:data_dirs] = []
default[:druid][:druid_dir_prefix] = "druid-services"

# Configuration defaults
default[:druid][:log_to_syslog] = 1
default[:druid][:properties]["druid.host"] = node[:ipaddress]
default[:druid][:timezone] = "UTC"
default[:druid][:encoding] = "UTF-8"
default[:druid][:java_opts] = "-Xmx1G"
default[:druid][:extra_classpath] = ""

# Type-specific defaults
default[:druid][:broker][:properties]["druid.port"] = 8080
default[:druid][:coordinator][:properties]["druid.port"] = 8081
default[:druid][:realtime][:properties]["druid.port"] = 8082
default[:druid][:historical][:properties]["druid.port"] = 8083
default[:druid][:overlord][:properties]["druid.port"] = 8084
default[:druid][:indexer][:properties]["druid.port"] = 8085
default[:druid][:middleManager][:properties]["druid.port"] = 8086

# General logs
default[:druid][:logs][:general][:filename] = '/etc/druid/logs/druid.log'
default[:druid][:logs][:general][:level] = 'WARN'
default[:druid][:logs][:general][:max_size] = '100Mb'
default[:druid][:logs][:general][:max_backup_index] = 5

# Event emmiter logs
default[:druid][:logs][:emmiter][:filename] = '/etc/druid/logs/emmiter.log'
default[:druid][:logs][:emmiter][:level] = 'INFO'
default[:druid][:logs][:emmiter][:max_size] = '100Mb'
default[:druid][:logs][:emmiter][:max_backup_index] = 5


# Other
default['java']['jdk_version'] = '7'


