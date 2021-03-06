# (c) Copyright 2020 Hewlett Packard Enterprise Development LP
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed
# under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either express or implied. See the License for the
# specific language governing permissions and limitations under the License.
# Note: This resources will work for client version greater than API800.

my_client = {
  url: ENV['ONEVIEWSDK_URL'],
  user: ENV['ONEVIEWSDK_USER'],
  password: ENV['ONEVIEWSDK_PASSWORD'],
  api_version: 1800
}

# No action will be performed
oneview_hypervisor_manager '172.18.13.11' do
  client my_client
  action :none
end


# Create Hypervisor Manager
oneview_hypervisor_manager '172.18.13.11' do
  client my_client
  data(
       username: 'dcs',
       password: 'dcs')
  action :create
end

# Deletes the existing Hypervisor Manager
oneview_hypervisor_manager '172.18.13.11' do 
  client my_client
  action :delete
end

# Updates Hypervisor Manager Registration, If doesn;t exist then it will create.
oneview_hypervisor_manager '172.18.13.11' do
  client my_client
  new_name "172.18.13.12"
  data(
    username: 'dcs',
    password: 'dcs'
  )
  action :update_registration
end
