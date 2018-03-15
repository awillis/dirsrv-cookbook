#
# Cookbook Name:: dirsrv
# Resource:: replica
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

actions :create
default_action :create

property :suffix, :kind_of => String, :name_attribute => true
property :instance, :kind_of => String, :required => true
property :id, :kind_of => Integer
property :role, :kind_of => Symbol, :required => true
property :purge_delay, :kind_of => Integer, :default => 604800
property :host, :kind_of => String, :default => 'localhost'
property :port, :kind_of => Integer, :default => 389
property :credentials, :kind_of => [ String, Hash ], :default => 'default_credentials'
property :base_dir, :kind_of => String, :default => '/var/lib/dirsrv'
property :databag_name, :kind_of => String
