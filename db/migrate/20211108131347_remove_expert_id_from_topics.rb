class RemoveExpertIdFromTopics < ActiveRecord::Migration[6.1]
  def change
    remove_column :topics, :expert_id
  end
end
