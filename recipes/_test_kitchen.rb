#
# Cookbook Name:: dirsrv
# Recipe:: _test_kitchen
#
# Copyright 2018 Riot Games, Inc.
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

# Setup for testing non-replication related LWRPs

include_recipe "dirsrv"

dirsrv_instance node[:hostname] + '_389' do
  is_cfgdir     true
  has_cfgdir    true
  cfgdir_addr   node[:ipaddress]
  cfgdir_domain 'kitchen'
  cfgdir_ldap_port 389
  host         node[:fqdn]
  suffix       'o=kitchen'
  action       [ :create, :start ]
end

## Entry

ldap_entry "ou=test,o=kitchen" do
  attributes ({ objectClass: [ 'organizationalUnit', 'top' ], ou: 'test' })
end

## Config

dirsrv_config "nsslapd-auditlog-logging-enabled" do
  value  'on'
end

## Plugin

dirsrv_plugin "MemberOf Plugin"

## Index

dirsrv_index "uid" do
  equality true
  presence true
  substring true
end

## User

ldap_user "awillis" do
  basedn "ou=test,o=kitchen"
  surname 'Willis'
  home "/home/alan"
  shell "/bin/bash"
  is_extensible true
  password "Super Cool Passwords Are Super Cool!!!!!"
end

# ACI

ldap_aci "user aci" do
  distinguished_name 'uid=awillis,ou=test,o=kitchen'
  rights ([ 'read', 'search', 'compare' ])
  userdn_rule ({ '=' => 'uid=test,o=kitchen' })
  day_of_week ([ 'Mon', 'Wed', 'Fri' ])
end
