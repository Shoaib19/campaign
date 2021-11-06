class AddExpertIdToTopic < ActiveRecord::Migration[5.0]
  def change
    add_column :topics, :expert_id, :integer
  end
end
