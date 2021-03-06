#
# Cookbook Name:: chocolatey-wget
# Recipe:: default
#
# Copyright 2014, Lonnie VanZandt
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

justDoItOptions = { "y" => nil, "f" => nil }
  
chocolatey 'wget' do
  action :install
  options justDoItOptions
  not_if { ::File.exists? '/ProgramData/chocolatey/bin/wget.exe' }
end

chocolatey 'wget' do
  action :upgrade
  options justDoItOptions
  only_if { ::File.exists? '/ProgramData/chocolatey/bin/wget.exe' }
end

windows_path "C:\ProgramData\chocolatey\bin" do
  action :add
end
