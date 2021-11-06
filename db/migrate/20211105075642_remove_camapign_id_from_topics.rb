class RemoveCamapignIdFromTopics < ActiveRecord::Migration[5.0]
  def change
    remove_reference :topics, :campaign_id, index: true, foreign_key: true
  end
end
