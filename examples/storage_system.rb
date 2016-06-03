client = {
  url: '',
  user: '',
  password: '',
  ssl_enabled: false
}

storage_system_credentials = {
  ip_hostname: '',
  username: '',
  password: ''
}

oneview_storage_system 'Teste' do
  data ({
    credentials:storage_system_credentials,
    managedDomain: 'TestDomain'
  })
  client client
  action :add
end

oneview_storage_system 'ThreePAR7200-8147' do
  data ({
    refreshState: 'RefreshPending'
  })
  client client
  action :edit
end
