# Cookbook Name:: dirsrv
# Resource:: suffix
#
# Copyright 2015 Riot Games, Inc.
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

actions :create
default_action :create

property :suffix, String, name_attribute: true
property :parent, String
property :nsslapd_backend, String
property :nsslapd_cachememsize, Integer
property :nsslapd_dncachememsize, Integer
property :entry_object_class_list, Array, default: [ 'top', 'extensibleObject' ]
property :host, String, default: 'localhost'
property :port, Integer, default: 389
property :credentials, [ String, Hash ], default: 'default_credentials'
property :databag_name, String
