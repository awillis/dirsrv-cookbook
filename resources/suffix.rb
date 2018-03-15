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

property :suffix, :kind_of => String, :name_attribute => true
property :parent, :kind_of => String
property :nsslapd_backend, :kind_of => String
property :nsslapd_cachememsize, :kind_of => Integer
property :nsslapd_dncachememsize, :kind_of => Integer
property :entry_object_class_list, :kind_of => Array, :default => [ 'top', 'extensibleObject' ]
property :host, :kind_of => String, :default => 'localhost'
property :port, :kind_of => Integer, :default => 389
property :credentials, :kind_of => [ String, Hash ], :default => 'default_credentials'
property :databag_name, :kind_of => String
