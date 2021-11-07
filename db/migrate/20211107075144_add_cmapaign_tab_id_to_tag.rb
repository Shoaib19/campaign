class AddCmapaignTabIdToTag < ActiveRecord::Migration[5.0]
  def change
    add_reference :tags, :campaign_tab, foreign_key: {to_table: :campaign_tabs}
  end
end
