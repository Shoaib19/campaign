class AddUserIdToTopic < ActiveRecord::Migration[6.1]
  def change
    add_reference :topics, :user, null: false, foreign_key: true
    add_reference :topics, :campaign_tab, foreign_key: {to_table: :campaign_tabs}
  end
end
