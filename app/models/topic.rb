class Topic < ApplicationRecord
    belongs_to :campaign_tab
    belongs_to :user
end
