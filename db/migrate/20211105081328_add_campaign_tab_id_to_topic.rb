class AddCampaignTabIdToTopic < ActiveRecord::Migration[5.0]
  def change
    add_reference :topics, :campaign_tab, foreign_key: {to_table: :campaign_tabs}
  end
end
