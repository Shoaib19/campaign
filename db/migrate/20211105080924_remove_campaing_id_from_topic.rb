class RemoveCampaingIdFromTopic < ActiveRecord::Migration[5.0]
  def change
    remove_column :topics, :campaign_id, :integer
  end
end
