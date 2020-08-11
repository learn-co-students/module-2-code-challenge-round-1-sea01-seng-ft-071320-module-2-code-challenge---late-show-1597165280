class Guest < ApplicationRecord
    has_many :apperances
    has_many :episodes, through: :apperances
end
