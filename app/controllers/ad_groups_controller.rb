class AdGroupsController < ApplicationController
  before_action :set_campaign
  before_action :set_campaign_ad_group, only: [:show, :update, :destroy]

  # GET /campaign/:campaign_id/ad_groups
  def index
    json_response(@campaign.ad_groups)
  end

  # GET /campaigns/:campaign_id/ad_groups/:id
  def show
    json_response(@ad_group)
  end

  # POST /campaigns/:campaign_id/ad_groups
  def create
    @campaign.ad_groups.create!(ad_group_params)
    json_response(@campaign, :created)
  end

  # PUT /campaigns/:campaign_id/ad_groups/:id
  def update
    @ad_group.update(ad_group_params)
    head :no_content
  end

  # DELETE /campaigns/:campaign_id/ad_groups/:id
  def destroy
    @ad_group.destroy
    head :no_content
  end

  private

  def ad_group_params
    params.permit(:name, :status)
  end

  def set_campaign
    @campaign = Campaign.find(params[:campaign_id])
  end

  def set_campaign_ad_group
    @ad_group = @campaign.ad_groups.find_by!(id: params[:id]) if @campaign
  end
end
