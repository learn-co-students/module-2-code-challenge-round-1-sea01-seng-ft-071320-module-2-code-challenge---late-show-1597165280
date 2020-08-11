class Apperance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest

    validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to:  5}
    validates :guest, uniqueness: { scope: :episode,   message: "should appear once per episode"}
end
