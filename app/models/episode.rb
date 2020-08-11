class Episode < ApplicationRecord
    has_many :apperances
    has_many :guests, through: :apperances
end
