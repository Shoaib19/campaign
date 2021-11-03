class CampaignTabsController < ApplicationController
  before_action :set_campaign_tab, only: %i[ show edit update destroy ]

  # GET /campaign_tabs or /campaign_tabs.json
  def index
    @campaign_tabs = CampaignTab.all
  end

  # GET /campaign_tabs/1 or /campaign_tabs/1.json
  def show
  end

  # GET /campaign_tabs/new
  def new
    @campaign_tab = CampaignTab.new
  end

  # GET /campaign_tabs/1/edit
  def edit
  end

  # POST /campaign_tabs or /campaign_tabs.json
  def create
    @campaign_tab = CampaignTab.new(campaign_tab_params)

    respond_to do |format|
      if @campaign_tab.save
        format.html { redirect_to @campaign_tab, notice: "Campaign tab was successfully created." }
        format.json { render :show, status: :created, location: @campaign_tab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @campaign_tab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campaign_tabs/1 or /campaign_tabs/1.json
  def update
    respond_to do |format|
      if @campaign_tab.update(campaign_tab_params)
        format.html { redirect_to @campaign_tab, notice: "Campaign tab was successfully updated." }
        format.json { render :show, status: :ok, location: @campaign_tab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @campaign_tab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campaign_tabs/1 or /campaign_tabs/1.json
  def destroy
    @campaign_tab.destroy
    respond_to do |format|
      format.html { redirect_to campaign_tabs_url, notice: "Campaign tab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaign_tab
      @campaign_tab = CampaignTab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def campaign_tab_params
      params.require(:campaign_tab).permit(:title, :purpose, :estimated_duration)
    end
end
