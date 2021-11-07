class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :commented_on , polymorphic: true
end
