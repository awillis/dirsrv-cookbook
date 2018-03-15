#
# Cookbook Name:: dirsrv
# Resource:: instance
#
# Copyright 2014 Riot Games, Inc.
# Author:: Alan Willis <alwillis@riotgames.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

actions :create, :start, :stop, :restart
default_action :create

property :instance, :kind_of => String, :name_attribute => true
property :suffix, :kind_of => String, :required => true
property :credentials, :kind_of => [ String, Hash ], :default => 'default_credentials'
property :host, :kind_of => String, :default => node[:fqdn]
property :port, :kind_of => Integer, :default => 389
property :cfgdir_domain, :kind_of => String
property :cfgdir_credentials, :kind_of => [ String, Hash ], :default => 'default_credentials'
property :cfgdir_addr, :kind_of => String, :default => node[:ipaddress]
property :cfgdir_http_port, :kind_of => Integer, :default => 9830
property :cfgdir_ldap_port, :kind_of => Integer, :default => 389
property :cfgdir_service_start, :kind_of => [ TrueClass, FalseClass ], :default => true
property :is_cfgdir, :kind_of => [ TrueClass, FalseClass ], :default => false
property :has_cfgdir, :kind_of => [ TrueClass, FalseClass ], :default => false
property :add_org_entries, :kind_of => [ TrueClass, FalseClass ], :default => false
property :add_sample_entries, :kind_of => [ TrueClass, FalseClass ], :default => false
property :preseed_ldif, :kind_of => String
property :conf_dir, :kind_of => String, :default => '/etc/dirsrv'
property :base_dir, :kind_of => String, :default => '/var/lib/dirsrv'
