class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest

    validates :episode, presence: true
    validates :guest, presence: true, uniqueness: true
    validates :rating, presence: true

end