#
# Cookbook Name:: oneview_test
# Recipe:: server_profile_template_create_volume_attachments
#
# (c) Copyright 2017 Hewlett Packard Enterprise Development LP
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

oneview_server_profile_template 'ServerProfileTemplate1' do
  client node['oneview_test']['client']
  volume_attachments(
    [
      {
        'volume_data' => { 'name' => 'Volume1' },
        'storage_system' => 'StorageSystem1',
        'storage_pool' => 'StoragePool1',
        'attachment_data' => { 'attr_1' => 'attr 1' }
      },
      {
        'volume_data' => { 'name' => 'Volume2' },
        'storage_system' => 'StorageSystem2',
        'storage_pool' => 'StoragePool2',
        'attachment_data' => { 'attr_2' => 'attr 2' }
      }
    ]
  )
  action :create
end
