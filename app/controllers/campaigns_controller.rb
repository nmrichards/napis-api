class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :update, :destroy]

  # GET /campaigns
  def index
    @campaigns = Campaign.all
    json_response(@campaigns)
  end

  # POST /campaigns
  def create
    @campaign = Campaign.create!(campaign_params)
    json_response(@campaign, :created)
  end

  # Get /campaigns/:id
  def show
    json_response(@campaign)
  end

  # PUT /campaigns/:id
  def update
    @campaign.update(campaign_params)
    head :no_content
  end

  # DELETE /campaigns/:id
  def destroy
    @campaign.destroy
    head :no_content
  end

  private

  def campaign_params
    # whitelist params
    params.permit(:name, :status, :budget, :advertising_channel_type)
  end

  def set_campaign
    @campaign = Campaign.find(params[:id])
  end
end
