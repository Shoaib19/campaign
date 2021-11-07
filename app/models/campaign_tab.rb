class CampaignTab < ApplicationRecord
    belongs_to :user
    has_many :topics , dependent: :delete_all
    has_many :comments, as: :commented_on
end
