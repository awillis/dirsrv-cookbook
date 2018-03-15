#
# Cookbook Name:: dirsrv
# Resource:: agreement
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

actions :create, :create_and_initialize
default_action :create

property :label, String, name_attribute: true
property :suffix, String, required: true
property :directory_type, String, default: 'DS'
property :replica_host, String, required: true
property :replica_port, [ Integer, String ], default: 389
property :replica_bind_dn, String, default: 'cn=Replication Manager,cn=config'
property :replica_update_schedule, String, default: '0000-2359 0123456'
property :replica_bind_method, String, default: 'SIMPLE'
property :replica_transport, String, default: 'LDAP'
property :replica_credentials, String
property :ds_replicated_attribute_list, String, default: '(objectclass=*) $ EXCLUDE authorityRevocationList accountUnlockTime memberof'
property :ds_replicated_attribute_list_total, String, default: '(objectclass=*) $ EXCLUDE accountUnlockTime'
property :ad_domain, String
property :ad_new_user_sync, String
property :ad_new_group_sync, String
property :ad_one_way_sync, String
property :ad_sync_interval, Integer, default: 300
property :ad_sync_move_action, String, default: 'none'
property :ad_replica_subtree, String
property :host, String, default: 'localhost'
property :port, Integer, default: 389
property :credentials, [ String, Hash ], default: 'default_credentials'
property :databag_name, String
