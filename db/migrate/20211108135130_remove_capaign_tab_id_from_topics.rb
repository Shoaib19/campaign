class RemoveCapaignTabIdFromTopics < ActiveRecord::Migration[6.1]
  def change
    remove_reference :topics, :campaign_tab, null: false, foreign_key: true
  end
end
