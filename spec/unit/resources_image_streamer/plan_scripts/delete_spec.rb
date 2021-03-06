require_relative './../../../spec_helper'

describe 'image_streamer_test_api300::plan_script_delete' do
  let(:complete_resource_name) { 'image_streamer_plan_script' }
  include_context 'chef context'

  let(:base_sdk) { OneviewSDK::ImageStreamer::API300 }

  it 'deletes it when it exists' do
    expect_any_instance_of(base_sdk::PlanScript).to receive(:retrieve!).and_return(true)
    expect_any_instance_of(base_sdk::PlanScript).to receive(:delete).and_return(true)
    expect(real_chef_run).to delete_image_streamer_plan_script('PlanScript1')
  end

  it 'does nothing when it does not exist' do
    expect_any_instance_of(base_sdk::PlanScript).to receive(:retrieve!).and_return(false)
    expect_any_instance_of(base_sdk::PlanScript).to_not receive(:delete)
    expect(real_chef_run).to delete_image_streamer_plan_script('PlanScript1')
  end
end
