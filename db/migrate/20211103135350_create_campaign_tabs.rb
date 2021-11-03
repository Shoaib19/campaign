class CreateCampaignTabs < ActiveRecord::Migration[5.0]
  def change
    create_table :campaign_tabs do |t|
      t.string :title
      t.string :purpose
      t.integer :estimated_duration

      t.timestamps
    end
  end
end
