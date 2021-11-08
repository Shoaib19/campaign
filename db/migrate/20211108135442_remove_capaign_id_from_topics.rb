class RemoveCapaignIdFromTopics < ActiveRecord::Migration[6.1]
  def change
    remove_column :topics, :campaign_id, null: false, foreign_key: true
  end
end
