class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest

  validates :rating, numericality: {
    greater_than_or_equal_to: 1,
    less_than_or_equal_to: 5,
    message: 'must be between 1 and 5, sorry!'
  }

  validates_uniqueness_of :guest, { scope: :episode, message: 'has already appeared in this episode!' }
end
