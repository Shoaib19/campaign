class Topic < ApplicationRecord
    belongs_to :campaign_tab
    belongs_to :user
    has_many :comments, as: :commented_on
end
