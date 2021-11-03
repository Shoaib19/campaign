require 'test_helper'

class CampaignTabsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campaign_tab = campaign_tabs(:one)
  end

  test "should get index" do
    get campaign_tabs_url
    assert_response :success
  end

  test "should get new" do
    get new_campaign_tab_url
    assert_response :success
  end

  test "should create campaign_tab" do
    assert_difference('CampaignTab.count') do
      post campaign_tabs_url, params: { campaign_tab: { estimated_duration: @campaign_tab.estimated_duration, purpose: @campaign_tab.purpose, title: @campaign_tab.title } }
    end

    assert_redirected_to campaign_tab_url(CampaignTab.last)
  end

  test "should show campaign_tab" do
    get campaign_tab_url(@campaign_tab)
    assert_response :success
  end

  test "should get edit" do
    get edit_campaign_tab_url(@campaign_tab)
    assert_response :success
  end

  test "should update campaign_tab" do
    patch campaign_tab_url(@campaign_tab), params: { campaign_tab: { estimated_duration: @campaign_tab.estimated_duration, purpose: @campaign_tab.purpose, title: @campaign_tab.title } }
    assert_redirected_to campaign_tab_url(@campaign_tab)
  end

  test "should destroy campaign_tab" do
    assert_difference('CampaignTab.count', -1) do
      delete campaign_tab_url(@campaign_tab)
    end

    assert_redirected_to campaign_tabs_url
  end
end
