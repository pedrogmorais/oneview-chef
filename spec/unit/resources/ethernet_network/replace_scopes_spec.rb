require_relative './../../../spec_helper'

describe 'oneview_test_api300_synergy::ethernet_network_replace_scopes' do
  let(:resource_name) { 'ethernet_network' }
  include_context 'chef context'

  let(:target_class) { OneviewSDK::API300::Synergy::EthernetNetwork }
  let(:scope_class) { OneviewSDK::API300::Synergy::Scope }
  let(:target_match_method) { [:replace_oneview_ethernet_network_scopes, 'EthernetNetwork1'] }
  it_behaves_like 'action :replace_scopes'
end
