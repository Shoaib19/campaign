class AddUserIdToCampaign < ActiveRecord::Migration[5.0]
  def change
    add_reference :campaign_tabs, :user, foreign_key: true
  end
end
