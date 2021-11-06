class AddCampaignIdToTopic < ActiveRecord::Migration[5.0]
  def change
    add_reference :topics, :campaign, foreign_key: {to_table: :campaign_tabs}
  end
end