#
# Cookbook Name:: oneview_test_api300_synergy
# Recipe:: sas_interconnect_set_uid_light_invalid
#
# (c) Copyright 2016 Hewlett Packard Enterprise Development LP
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed
# under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either express or implied. See the License for the
# specific language governing permissions and limitations under the License.
#

oneview_sas_interconnect 'SASInterconnect1' do
  client node['oneview_test']['client']
  api_variant 'Synergy'
  action :set_uid_light
end
