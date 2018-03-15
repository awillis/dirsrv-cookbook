# Cookbook Name:: dirsrv
# Resource:: plugin
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

actions :enable, :disable, :modify
default_action :enable

property :common_name, String, name_attribute: true
property :attributes, Hash, default: Hash.new
property :append_attributes, Hash, default: Hash.new
property :host, String, default: 'localhost'
property :port, Integer, default: 389
property :credentials, [ String, Hash ], default: 'default_credentials'
property :databag_name, String
