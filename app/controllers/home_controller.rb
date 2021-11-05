class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:index,:show, :edit, :update, :destroy]
  def index
    @campaign_tabs = CampaignTab.all
  end
end
